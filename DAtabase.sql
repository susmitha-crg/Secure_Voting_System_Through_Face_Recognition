/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.1.13-MariaDB : Database - smart_voting_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`smart_voting_system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smart_voting_system`;

/*Table structure for table `nominee` */

DROP TABLE IF EXISTS `nominee`;

CREATE TABLE `nominee` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(100) NOT NULL,
  `party_name` varchar(100) DEFAULT NULL,
  `symbol_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `nominee` */

insert  into `nominee`(`sno`,`member_name`,`party_name`,`symbol_name`) values (1,'Pavan','Janasena','6.png');

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `vote` varchar(100) NOT NULL,
  `aadhar` varchar(100) NOT NULL,
  PRIMARY KEY (`aadhar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vote` */

/*Table structure for table `voters` */

DROP TABLE IF EXISTS `voters`;

CREATE TABLE `voters` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `aadhar_id` varchar(100) NOT NULL,
  `voter_id` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pno` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `d_name` varchar(100) DEFAULT NULL,
  `rno` varchar(100) NOT NULL,
  `verified` varchar(100) DEFAULT NULL,
  `second_otp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`,`aadhar_id`,`rno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `voters` */

insert  into `voters`(`sno`,`first_name`,`middle_name`,`last_name`,`aadhar_id`,`voter_id`,`email`,`pno`,`state`,`d_name`,`rno`,`verified`,`second_otp`) values (1,'Preeti','P','Desai','9632587410','INVI9080','preeti@gmail.com','9632587410','Andra Pradesh','Guntur','','yes',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
