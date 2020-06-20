-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2018 at 01:36 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `karuna_clinic_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `First_Name`, `Last_Name`, `Phone_No`, `Email`, `Username`, `Password`) VALUES
(1, 'Kumar', 'Swamy', '0776542345', 'kumarswamy@gmail.com', 'kumar', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `Appointment_id` int(10) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Appointment_order` int(5) NOT NULL,
  `Doctor_id` int(10) NOT NULL,
  `Patient_id` int(11) NOT NULL,
  PRIMARY KEY (`Appointment_id`),
  KEY `Doctor_id` (`Doctor_id`),
  KEY `Patient_id` (`Patient_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_id`, `Date`, `Time`, `Appointment_order`, `Doctor_id`, `Patient_id`) VALUES
(1, '2018-12-04', '04:30:00', 2, 3, 0),
(2, '2018-12-21', '00:00:05', 2, 3, 3),
(3, '2018-12-21', '00:00:05', 3, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `confirmation_mesaage`
--

CREATE TABLE IF NOT EXISTS `confirmation_mesaage` (
  `Message_No` int(10) NOT NULL AUTO_INCREMENT,
  `Description` text NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Patient_id` int(10) NOT NULL,
  `Admin_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Message_No`),
  KEY `Patient_id` (`Patient_id`),
  KEY `Admin_id` (`Admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `confirmation_mesaage`
--


-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `Doctor_id` int(10) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `AvailableDay` varchar(30) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Admin_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Doctor_id`),
  KEY `Admin_id` (`Admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_id`, `First_Name`, `Last_Name`, `Category`, `Phone_No`, `Address`, `Email`, `AvailableDay`, `StartTime`, `EndTime`, `Username`, `Password`, `Admin_id`) VALUES
(1, 'Mukunthan', 'Loganathan', 'Cardilogist', '0779919532', 'Jaffna', 'mukunthan84@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'mukunthan', '12345', 1),
(2, 'Raveenthiran', 'Subramaniyam', 'ENT surgeon', '0763477312', 'Jaffna', 'sravee72@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'raveenthiran', '12345', 1),
(3, 'Malaravan', 'Navaneethan', 'Eye surgeon', '0771247819', 'Kopay', 'malaravann@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'malaravan', '12345', 1),
(4, 'Sritharan', 'Ramanatnan', 'Gynecologist', '0773429877', 'Thirunelveli', 'sritharan76@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'sritharan', '12345', 1),
(5, 'Bavani', 'Sriskantharajah', 'Gynecologist', '0776438971', 'Jaffna', 'sribavani82@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'bavani', '12345', 1),
(6, 'Ramachandran', 'Kanthasami', 'Neurologist', '0753422784', 'Kondavil', 'kram3170@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'ramachandran', '12345', 1),
(7, 'Janaki', 'Subakaran', 'ENT surgeon', '0778824569', 'Chankanai', 'sjanaki85@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'janaki', '12345', 1),
(8, 'Thamayanthi', 'Kumaran', 'Pediatrician', '0769304571', 'Jaffna', 'kthamayanthi2@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'thamayanthi', '12345', 1),
(9, 'Mayooran', 'Sivakumar', 'Pediatrician', '0752366107', 'Colombo', 'mayooran77@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'mayooran', '12345', 1),
(10, 'Sutharsan', 'Murukaiya', 'Oncologist', '0771158744', 'Chunnakam', 'sutharsan76@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'sutharsan', '12345', 1),
(11, 'Piratheepan', 'Sabapathy', 'Oncologist', '0773128335', 'Jaffna', 'spiratheepan7@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'piratheepan', '12345', 1),
(14, 'Roshany', 'Raja', 'Cardiologist', '0769006515', 'Jaffna', 'Vino@gmail.com', '0000-00-00', '00:00:00', '00:00:00', 'rose', 'Rose1996', 1),
(15, 'Abira', 'Kirishna', 'Ent Surgeon', '0998765432', 'Badulla', 'abi@gmail.com', 'Tuesday,Thursday', '00:00:09', '00:00:00', 'abira', 'Abi123445', 1),
(16, 'jbbjbk', 'kknknk', 'nknkno', '7965746876', 'bvujvuj', 'bjjb@gmail.com', 'Monday,Thursday,Saturday', '00:00:08', '00:00:14', 'vfvrfdv', 'Dvvf83983', 1),
(17, 'jbjbkb', 'hvhvhvju', 'jbjbjk', '978564456', 'jguugu', 'nvhvvk@gmail.com', 'Monday,Tuesday,Thursday', '08:00:00', '14:00:00', 'rffdsvs', 'Dhidehicfe', 1),
(18, 'bggikgik', 'hvvjvj', '', '7497374037', 'jvjvjb', 'hkhkbk@gmail.com', '', '00:00:00', '00:00:00', 'bkbkbk', 'Ahvhvh8796', 1),
(19, 'bggikgik', 'hvvjvj', '', '7497374037', 'jvjvjb', 'hkhkbk@gmail.com', '', '00:00:00', '00:00:00', 'bkbkbk', 'bjbj6869S', 1),
(20, 'ccdcs', 'cdcesd', 'deefedfde', '223232', 'fedfcrdf', 'frr@gmail.com', 'Tuesday,Friday', '00:00:00', '12:23:32', 'rdvfvf', 'Adnkn869', 1),
(21, 'vcdcds', 'dcdscfds', '', '8799700', 'fee', 'vdcfdev@fcv.com', '', '00:00:00', '00:00:00', 'cencenk', 'Vnkn97900', 1),
(22, 'ojogjb', 'vfvsfs', 'fggs', '39720742', 'bggreg', 'redgr@gmail.com', 'Tuesday,Wednesday', '09:00:00', '11:00:00', 'dsdd', 'Asdde3323', 1),
(23, 'bdfv', 'fgegf', 'fgerge', '43242343', 'bgbtdg', 'fdds@gmail.com', 'Tuesday,Friday', '08:00:00', '10:00:00', 'fvs', 'Vjdhfi9797', 1),
(24, 'dcdsc', 'dccsddcss', 'xdseds', '56342', 'bg', 'fvs@gmail.com', 'Tuesday,Friday', '08:00:00', '12:00:00', 'dsvf', 'Bfvmdo5432', 1),
(25, 'dcdsc', 'dccsddcss', 'xdseds', '56342', 'bg', 'fvs@gmail.com', 'Tuesday,Friday', '08:00:00', '12:00:00', 'dsvf', 'Bfvmdo5432', 1),
(26, 'jrhuhdrg', 'defefw', 'dfcewfe', '0988687', 'dcaefcew', 'dfeswdq@gmail.com', 'Tuesday,Wednesday', '09:00:00', '12:00:00', 'vvfder', 'Vioihw8976', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_assistant`
--

CREATE TABLE IF NOT EXISTS `lab_assistant` (
  `Labassistant_id` int(10) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Admin_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Labassistant_id`),
  KEY `Admin_id` (`Admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lab_assistant`
--

INSERT INTO `lab_assistant` (`Labassistant_id`, `First_Name`, `Last_Name`, `Address`, `Phone_No`, `Email`, `Username`, `Password`, `Admin_id`) VALUES
(1, 'Mala', 'Raj', 'Colombo', '0779865432', 'mala@gmail.com', 'malaraj', '123', 1),
(2, 'cdxcdcd', 'cdcdcd', 'cdcdcdc', '68576534', 'kjhc@ijhgj.com', 'deiebcke', 'Sgujgu7879', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `Patient_id` int(10) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` enum('M','F') NOT NULL DEFAULT 'M',
  `Address` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `Disease` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Admin_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Patient_id`),
  KEY `Admin_id` (`Admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_id`, `Firstname`, `Lastname`, `DOB`, `Gender`, `Address`, `Email`, `Phone_No`, `Disease`, `Username`, `Password`, `Admin_id`) VALUES
(5, 'abi', 'kirish', '0000-00-00', '', 'jaffna', 'archu@gmail.com', '0779919532', '', 'abi111', '123Abira', 1),
(6, 'abi', 'kirish', '0000-00-00', '', 'jaffna', 'archu@gmail.com', '0779919532', '', 'abi', '123451996C', 1),
(3, 'vinoja', 'Rajasuntharam', '2018-11-22', '', 'jaffna', 'vino@gmail.com', '0769006515', 'fever', 'ertwa', 'retgA234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_doctor`
--

CREATE TABLE IF NOT EXISTS `patient_doctor` (
  `Patient_id` int(11) NOT NULL,
  `Doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_doctor`
--


-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `Report_No` int(10) NOT NULL AUTO_INCREMENT,
  `Category` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Patient_id` int(10) NOT NULL,
  `Doctor_id` int(10) NOT NULL,
  `Lab_Assistant_id` int(10) NOT NULL,
  PRIMARY KEY (`Report_No`),
  KEY `Patient_id` (`Patient_id`),
  KEY `Doctor_id` (`Doctor_id`),
  KEY `Lab_Assistant_id` (`Lab_Assistant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `report`
--


-- --------------------------------------------------------

--
-- Table structure for table `verification_code`
--

CREATE TABLE IF NOT EXISTS `verification_code` (
  `Code_No` int(10) NOT NULL AUTO_INCREMENT,
  `Report_No` int(10) NOT NULL,
  `Patient_id` int(10) NOT NULL,
  PRIMARY KEY (`Code_No`),
  KEY `Report_No` (`Report_No`),
  KEY `Patient_id` (`Patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `verification_code`
--

