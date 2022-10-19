--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    dscription text,
    age numeric,
    as_life boolean,
    is_real boolean,
    distance_from_sun integer,
    diameter integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    description text,
    age numeric,
    has_life boolean,
    is_real boolean,
    distance_from_sun integer,
    diameter integer NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(50)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: non_organic; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.non_organic (
    description text,
    age numeric,
    has_life boolean,
    is_real boolean,
    distance_from_sun integer,
    non_organic_id integer NOT NULL,
    diameter integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.non_organic OWNER TO freecodecamp;

--
-- Name: non_organic_non_organic_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.non_organic_non_organic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.non_organic_non_organic_id_seq OWNER TO freecodecamp;

--
-- Name: non_organic_non_organic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.non_organic_non_organic_id_seq OWNED BY public.non_organic.non_organic_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    description text,
    columage numeric,
    has_life boolean,
    is_real boolean,
    distance_from_sun integer,
    planet_id integer NOT NULL,
    star_id integer,
    diameter integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    description text,
    has_life boolean,
    is_real boolean,
    distance_from_sun integer,
    galaxy_id integer,
    star_id integer NOT NULL,
    diameter integer,
    age integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: non_organic non_organic_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.non_organic ALTER COLUMN non_organic_id SET DEFAULT nextval('public.non_organic_non_organic_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, NULL, NULL, 5, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, NULL, NULL, 7, 'Draco II');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, NULL, NULL, 4567, 'Tucana III');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, NULL, NULL, 423567, 'Segue I');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, NULL, NULL, 1237, 'Hydrus I');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, NULL, NULL, 12213437, 'Carina III');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 3, 1, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 235, 2, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 25, 3, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 45, 6, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 4325, 7, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 125, 4, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 12, 5, NULL, NULL);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 13413, 8, NULL, 'dfwe');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 2412, 9, NULL, 'wefwe');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 2353, 10, NULL, 'wegwe');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 353252, 11, NULL, 'wegew');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 3533252, 12, NULL, 'egqweg');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 13413, 13, NULL, 'dfwegweg');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 2412, 14, NULL, 'wefwertewe');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 2353, 15, NULL, 'wevbcgwe');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 353252, 16, NULL, 'wesdfgew');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 3533252, 17, NULL, 'egqwecvbcvg');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 325235, 18, NULL, 'sgweagwe');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 135315, 19, NULL, 'rgawegawe');
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, 1235315, 20, NULL, 'wegwegfwe');


--
-- Data for Name: non_organic; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.non_organic VALUES (NULL, NULL, NULL, NULL, NULL, 1, 50, NULL);
INSERT INTO public.non_organic VALUES (NULL, NULL, NULL, NULL, NULL, 2, 33, NULL);
INSERT INTO public.non_organic VALUES (NULL, NULL, NULL, NULL, NULL, 3, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 1, NULL, 123513, 'Venus');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 2, NULL, 34123, 'earth');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 3, NULL, 23242, 'Jupiter');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 4, NULL, 34123, 'Mars');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 5, NULL, 432423, 'Uranus');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 6, NULL, 324234, 'Pluton');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 7, NULL, 123513, 'Acamar');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 8, NULL, 34123, 'Castor');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 9, NULL, 23242, 'Chalawan');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 10, NULL, 34123, 'Enif');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 11, NULL, 432423, 'Glenah');
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, 12, NULL, 324234, 'Kang');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 1, NULL, 35315, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 2, NULL, 464, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 3, NULL, 4234, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 4, NULL, 6546, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 5, NULL, 8523, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 6, NULL, 84234, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 7, NULL, 234, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 8, NULL, 3213, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 9, NULL, 23523, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 10, NULL, 4245, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 11, NULL, 23234, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 12, NULL, 2343, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 13, NULL, 23523, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 14, NULL, 423525, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 15, NULL, 232352, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 16, NULL, 2341323, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 17, NULL, 7823, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 18, NULL, 423525, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 19, NULL, 422347, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 20, NULL, 325235, NULL);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 21, NULL, 1241, 'Chico');
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, NULL, 22, NULL, 325142, 'Pedro');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: non_organic_non_organic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.non_organic_non_organic_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: non_organic non_organic_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.non_organic
    ADD CONSTRAINT non_organic_name_key UNIQUE (name);


--
-- Name: non_organic non_organic_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.non_organic
    ADD CONSTRAINT non_organic_pkey PRIMARY KEY (non_organic_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

