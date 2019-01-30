drop database PublicSafety;

create database PublicSafety;

use PublicSafety;

create table zone (
ID int Primary key,
zone_name varchar(50),
squad_number int,
vertics int,
boundary polygon NOT NULL,
SPATIAL INDEX(boundary))
engine MyISAM;

create table officer (
Badge_number int Primary key,
officer_name varchar(50),
squad_number int,
coordinates point NOT NULL,
SPATIAL INDEX(coordinates))
engine MyISAM;

create table route (
route_number int Primary key,
vertics int,
boundary linestring  NOT NULL,
SPATIAL INDEX(boundary))
engine MyISAM;

create table incident (
incident_id int Primary key,
type_of_incident varchar(50),
coordinates point NOT NULL,
SPATIAL INDEX(coordinates))
engine MyISAM;

