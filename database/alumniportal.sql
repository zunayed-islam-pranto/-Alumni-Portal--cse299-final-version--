-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 07:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumniportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` varchar(36) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `FirstName`, `LastName`, `Email`, `Password`, `PhoneNumber`, `isAdmin`) VALUES
('de182fb9-db8b-46ce-886e-890602fee747', 'Faisal', 'Ahmed', 'faisal7@flyfar.tech', '123456789', '01868984364', 1);

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE `adress` (
  `uuid` varchar(36) NOT NULL,
  `City` varchar(255) NOT NULL,
  `ZipCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `uuid` varchar(36) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `StudentId` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `EducationStatus` varchar(255) DEFAULT NULL,
  `UniversityName` varchar(255) NOT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`uuid`, `FirstName`, `LastName`, `Email`, `Password`, `StudentId`, `PhoneNumber`, `Department`, `EducationStatus`, `UniversityName`, `City`, `Country`) VALUES
('0b764a67-dc46-42f1-b9df-f704e2880b00', 'sayem', 'ahmed', 'sayem@gmail.com', '123456789', NULL, NULL, NULL, NULL, 'aiub', 'rajshahi', 'bd'),
('12fc5134-a90d-4149-b950-9cc8223d800e', 'Faisal', 'Ahmed', 'faissal27@flyfar.tech', '123456789', NULL, NULL, NULL, NULL, 'aiub', 'rajshahi', 'bd'),
('9435d341-a36a-4a4d-9fc5-f04c75a5be08', 'Zunayed', 'Islam Pranto', 'zunayedislam@gmail.com', '123456789', NULL, NULL, NULL, NULL, 'aiub', 'rajshahi', 'bd'),
('d654d7b9-d7d3-4c5f-8d07-d54d84d236be', 'Faisal', 'Ahmed', 'faisal27@flyfar.tech', '123456789', NULL, NULL, NULL, NULL, 'aiub', 'rajshahi', 'bd');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobid` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `alumniUuid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `uuid` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Body` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `alumniUuid` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_entity`
--

CREATE TABLE `post_entity` (
  `uuid` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Body` varchar(255) NOT NULL,
  `Date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `adminAdminId` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `uuid` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobid`),
  ADD KEY `FK_39c836efa44e8a05b0a66d0d286` (`alumniUuid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `FK_a2678a3ced0484e2755a7c880f4` (`alumniUuid`);

--
-- Indexes for table `post_entity`
--
ALTER TABLE `post_entity`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `FK_329165ac2aa09d2e0a45fba38cd` (`adminAdminId`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `uuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_entity`
--
ALTER TABLE `post_entity`
  MODIFY `uuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `uuid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_39c836efa44e8a05b0a66d0d286` FOREIGN KEY (`alumniUuid`) REFERENCES `alumni` (`uuid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_a2678a3ced0484e2755a7c880f4` FOREIGN KEY (`alumniUuid`) REFERENCES `alumni` (`uuid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_entity`
--
ALTER TABLE `post_entity`
  ADD CONSTRAINT `FK_329165ac2aa09d2e0a45fba38cd` FOREIGN KEY (`adminAdminId`) REFERENCES `admin` (`adminId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
