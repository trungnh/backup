-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: dotho
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_album`
--

DROP TABLE IF EXISTS `tbl_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_album`
--

LOCK TABLES `tbl_album` WRITE;
/*!40000 ALTER TABLE `tbl_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_catalogs`
--

DROP TABLE IF EXISTS `tbl_catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_catalogs` (
  `cata_id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`cata_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_catalogs`
--

LOCK TABLES `tbl_catalogs` WRITE;
/*!40000 ALTER TABLE `tbl_catalogs` DISABLE KEYS */;
INSERT INTO `tbl_catalogs` VALUES (128,0,0,1),(129,0,0,1),(130,0,0,1),(131,0,0,1),(132,0,0,1),(133,0,0,1),(134,0,0,1),(135,0,0,1),(136,0,0,1),(137,0,0,1),(138,0,0,1),(139,0,0,1),(140,0,0,1),(141,0,0,1),(142,0,0,1);
/*!40000 ALTER TABLE `tbl_catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_catalogs_text`
--

DROP TABLE IF EXISTS `tbl_catalogs_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_catalogs_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cata_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `lag_id` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_catalogs_text`
--

LOCK TABLES `tbl_catalogs_text` WRITE;
/*!40000 ALTER TABLE `tbl_catalogs_text` DISABLE KEYS */;
INSERT INTO `tbl_catalogs_text` VALUES (128,128,'Án gian','&nbsp;',0,0),(129,129,'Câu đối','&nbsp;',0,0),(130,130,'Cửa võng','&nbsp;',0,0),(131,131,'Cuốn thư','&nbsp;',0,0),(132,132,'Hoành phi','&nbsp;',0,0),(133,133,'Ngai - Ỷ','&nbsp;',0,0),(134,134,'Ô xa','&nbsp;',0,0),(135,135,'Quạt - Lá sen','&nbsp;',0,0),(136,136,'Thiều châu','&nbsp;',0,0),(137,137,'Giá gương','&nbsp;',0,0),(138,138,'Bàn thờ','&nbsp;',0,0),(139,139,'Khám thờ','&nbsp;',0,0),(140,140,'Tử thờ','&nbsp;',0,0),(141,141,'Bộ hoa sen','&nbsp;',0,0),(142,142,'Tượng phật','&nbsp;',0,0),(143,143,'Câu đối phẳng','&nbsp;',0,0),(144,144,'Câu đối máng','&nbsp;',0,0),(145,145,'Câu đối lá chuối - quả bầu','&nbsp;',0,0);
/*!40000 ALTER TABLE `tbl_catalogs_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (27,0,1),(28,0,1),(29,0,1);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category_text`
--

DROP TABLE IF EXISTS `tbl_category_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `lag_id` int(11) DEFAULT '0',
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_tbl_category_text` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category_text`
--

LOCK TABLES `tbl_category_text` WRITE;
/*!40000 ALTER TABLE `tbl_category_text` DISABLE KEYS */;
INSERT INTO `tbl_category_text` VALUES (27,27,'Hướng dẫn','&nbsp;',0,1),(28,28,'slideshow','&nbsp;',0,1),(29,29,'Tin tức','&nbsp;',0,1);
/*!40000 ALTER TABLE `tbl_category_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comment` (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT NULL,
  `con_id` int(11) DEFAULT NULL,
  `pro_id` text COLLATE utf8_unicode_ci,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joindate` datetime DEFAULT NULL,
  `isactive` int(11) DEFAULT '0',
  PRIMARY KEY (`comm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment`
--

LOCK TABLES `tbl_comment` WRITE;
/*!40000 ALTER TABLE `tbl_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_comment_text`
--

DROP TABLE IF EXISTS `tbl_comment_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comment_text` (
  `comm_text_id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `lag_id` int(11) DEFAULT '0',
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`comm_text_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comment_text`
--

LOCK TABLES `tbl_comment_text` WRITE;
/*!40000 ALTER TABLE `tbl_comment_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_comment_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_component`
--

DROP TABLE IF EXISTS `tbl_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_component` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `issytem` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_component`
--

LOCK TABLES `tbl_component` WRITE;
/*!40000 ALTER TABLE `tbl_component` DISABLE KEYS */;
INSERT INTO `tbl_component` VALUES (1,'components','components','Quản&nbsp; lý components 	','site',1,1),(2,'menus','menus','Quản lý&nbsp; menu','site',0,1),(3,'contact','Contact',' Quản lý thông tin liên lạc<br>','site',1,1),(4,'category','Category','Quản lý nhóm tin<br>','site',1,1),(5,'menuitem','Menu Item','quản lý menu item<br>','site',0,1),(6,'contents','Contents','quản lý bài viết<br>','site',0,1),(7,'products','Products','com product<br>','site',0,1),(8,'catalogs','Catalogs','Trang san phẩm theo nhóm <br>','site',0,1),(9,'document','Document','Tài liệu download','1',0,1),(10,'cart','Cart','','site',0,1),(11,'users','Users','Đăng kí đang nhập','',0,1),(12,'comment','comment','comment','',0,1),(13,'event','event','&nbsp;','site',0,1);
/*!40000 ALTER TABLE `tbl_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_configcontent`
--

DROP TABLE IF EXISTS `tbl_configcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_configcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_name` int(11) NOT NULL DEFAULT '1',
  `show_icon` int(11) NOT NULL DEFAULT '1',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configcontent`
--

LOCK TABLES `tbl_configcontent` WRITE;
/*!40000 ALTER TABLE `tbl_configcontent` DISABLE KEYS */;
INSERT INTO `tbl_configcontent` VALUES (1,'NgÃ y Ä‘Äƒng','',1,0,0,0),(2,'Cáº­p nháº­t láº§n cuá»‘i','',1,0,0,0),(3,'NgÆ°á»i Ä‘Äƒng','',1,0,0,0),(4,'Tags','',1,0,0,0),(5,'Ã kiáº¿n','http://dothosondong.us/images/icons/comment.png',0,1,0,0),(6,'Zing Me','http://dothosondong.us/images/icons/logozing.gif',0,1,0,0),(7,'Yahoo','http://dothosondong.us/images/icons/icon_yahoo.gif',0,1,0,1),(8,'Facebook','http://dothosondong.us/images/icons/icon_facebook.gif',0,1,0,1),(9,'Twitter','http://dothosondong.us/images/icons/icon_twitter.gif',0,1,0,1),(10,'Email','http://dothosondong.us/images/icons/icon_mail.gif',0,1,0,0),(11,'LÆ°u tin','http://dothosondong.us/images/icons/icon_star.gif',0,1,0,0),(12,'In','http://dothosondong.us/images/icons/icon-print.gif',0,1,0,0);
/*!40000 ALTER TABLE `tbl_configcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_configsite`
--

DROP TABLE IF EXISTS `tbl_configsite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_configsite` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `tem_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8_unicode_ci,
  `meta_keyword` longtext COLLATE utf8_unicode_ci,
  `meta_descript` longtext COLLATE utf8_unicode_ci,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `footer` text COLLATE utf8_unicode_ci NOT NULL,
  `nick_yahoo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_yahoo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configsite`
--

LOCK TABLES `tbl_configsite` WRITE;
/*!40000 ALTER TABLE `tbl_configsite` DISABLE KEYS */;
INSERT INTO `tbl_configsite` VALUES (1,0,'','Đồ thờ tượng phật Sơn Đồng','','','01689942417','','anh.trung281@gmail.com','','','<br>','đồ thờ, tượng phật, án gian, hoành phi, câu đối, của võng, ô xa, ngai, kiệu','Cơ sở sản xuất đồ thờ tượng phật Hùng Vũ',0,'<span style=\"font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 18px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); font-weight: bold;\">Cơ sở sản xuất đồ thờ tượng phật Hùng Vũ</span><div style=\"font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255);\"><div>Địa chỉ: Sơn Đồng - Hoài Đức - Hà Nội</div><div>Điện thoại: 0986957881 | Email: khanhhungdj@gmail.com</div></div>','<span style=\"font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 18px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); font-weight: bold;\">Cơ sở sản xuất đồ thờ tượng phật Hùng Vũ</span><div style=\"font-family: Arial,Helvetica,sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255);\"><div>Địa chỉ: Sơn Đồng - Hoài Đức - Hà Nội</div><div>Điện thoại: 0986957881 | Email: khanhhungdj@gmail.com</div></div>','','');
/*!40000 ALTER TABLE `tbl_configsite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_content`
--

DROP TABLE IF EXISTS `tbl_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_content` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `creatdate` date NOT NULL,
  `modifydate` date NOT NULL,
  `gmem_id` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `visited` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_content`
--

LOCK TABLES `tbl_content` WRITE;
/*!40000 ALTER TABLE `tbl_content` DISABLE KEYS */;
INSERT INTO `tbl_content` VALUES (42,'Hướng dẫn mua hàng',27,'2012-02-28','2014-12-09',1,'','',327,0,1),(43,'Hình thức thanh toán',27,'2012-02-28','2012-11-16',1,'','',310,0,1),(44,'Vận chuyển hàng',27,'2012-02-28','2012-11-17',1,'','',297,0,1),(45,'Câu hỏi khác',27,'2012-02-28','0000-00-00',1,'','',1,0,1);
/*!40000 ALTER TABLE `tbl_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_content_text`
--

DROP TABLE IF EXISTS `tbl_content_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_content_text` (
  `con_text_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_id` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fulltext` longtext COLLATE utf8_unicode_ci,
  `author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lag_id` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`con_text_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_content_text`
--

LOCK TABLES `tbl_content_text` WRITE;
/*!40000 ALTER TABLE `tbl_content_text` DISABLE KEYS */;
INSERT INTO `tbl_content_text` VALUES (66,44,'<br>','Vận chuyển hàng','<h2>\r\n	<span style=\\\"font-size:18px;\\\">Thanh toán tại nhà</span></h2>\r\n<table border=\\\"0\\\" height=\\\"184\\\" width=\\\"630\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\\\"3\\\">\r\n				<img alt=\\\"\\\" src=\\\"http://vinasys.vn/images/gianohang.png\\\" align=\\\"\\\" border=\\\"0px\\\">\r\n			</td>\r\n			<td colspan=\\\"2\\\">\r\n				<br>\r\n				Nhanh.vn sẽ xác nhận đơn hàng và tổng giá trị đơn hàng với khách \r\nhàng. Sau khi xác nhận, nhân viên giao nhận của chúng tôi sẽ chuyển sản \r\nphẩm tới địa chỉ của khách hàng và thu tiền trực tiếp tại địa chỉ của \r\nkhách hàng.&nbsp;\r\n				<p>\r\n					(Áp dụng cho các địa chỉ tại nội thành Hà Nội)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\\"2\\\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\\"2\\\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	<span style=\\\"font-size:18px;\\\">Chuyển khoản bằng máy ATM</span></h2>\r\n<table border=\\\"0\\\" height=\\\"269\\\" width=\\\"630\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\\\"3\\\">\r\n				<p>\r\n					<img alt=\\\"\\\" src=\\\"http://dev.nhanh.vn/media/tin/chuyenkhoanATM.jpg\\\" style=\\\"float: left; margin-top: 5px; margin-bottom: 5px; margin-left: 10px; margin-right: 10px;\\\" height=\\\"153\\\" width=\\\"150\\\"></p>\r\n			</td>\r\n			<td colspan=\\\"2\\\">\r\n				<p>\r\n					Khách hàng chuyển khoản vào tài khoản ngân hàng của Nhanh.vn tại \r\nmáy ATM. Sau khi chuyển khoản bạn vui lòng liên hệ để thông báo lại với \r\nchúng tôi, chúng tôi sẽ xác nhận và chuyển sản phẩm tới địa chỉ của \r\nkhách hàng.</p>\r\n				Danh sách số tài khoản ngân hàng của <br>Chủ tài khoản: Nguyễn xuân Tuyền<br><span class=\\\"userContent\\\">Số tài khoản: 0491000006468<br> Ngân hàng: Vietcombank</span><br>\r\n				</td>\r\n		</tr>\r\n		<tr>\r\n			<td><br></td>\r\n			<td><br></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\\"2\\\">\r\n				&nbsp;&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	<span style=\\\"font-size:18px;\\\">Internet Banking</span></h2>\r\n<table border=\\\"0\\\" height=\\\"271\\\" width=\\\"628\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\\\"3\\\">\r\n				<img alt=\\\"\\\" src=\\\"http://dev.nhanh.vn/media/tin/internetbanking.jpg\\\" style=\\\"float: left; margin-left: 10px; margin-right: 10px;\\\" height=\\\"153\\\" width=\\\"150\\\"></td>\r\n			<td colspan=\\\"2\\\">\r\n				<p>\r\n					Khách hàng cần có đăng ký sử dụng dịch vụ internet banking tại ngân\r\n hàng để chuyển khoản. Sau khi chuyển khoản bạn vui lòng liên hệ để \r\nthông báo lại với chúng tôi, chúng tôi sẽ xác nhận và chuyển sản phẩm \r\ntới địa chỉ của khách hàng.</p>\r\n				Danh sách số tài khoản ngân hàng của Nhanh.vn.<br>\r\n				Chủ tài khoản: Nguyễn xuân Tuyền<br><span class=\\\"userContent\\\">Số tài khoản: 0491000006468<br> Ngân hàng: Vietcombank</span><br>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><br></td>\r\n			<td><br></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\\"2\\\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	<span style=\\\"font-size:18px;\\\">Nộp tiền tại quầy ngân hàng</span></h2>\r\n<table border=\\\"0\\\" height=\\\"245\\\" width=\\\"628\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\\\"3\\\">\r\n				<br></td>\r\n			<td colspan=\\\"2\\\">\r\n				<p>\r\n					Khách hàng ra ngân hàng và thực hiện chuyển khoản cho Nhanh.vn. Sau\r\n khi chuyển khoản bạn vui lòng liên hệ để thông báo lại với chúng tôi, \r\nchúng tôi sẽ xác nhận và chuyển sản phẩm tới địa chỉ của khách hàng.</p>\r\n				<br>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<br>\r\n				&nbsp;</td>\r\n			<td>\r\n				<br>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\\"2\\\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h2>\r\n	<span style=\\\"font-size:18px;\\\">Thanh trực tuyến qua cổng thanh toán Bảo Kim</span></h2>\r\n<table border=\\\"0\\\" height=\\\"175\\\" width=\\\"632\\\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\\\"3\\\">\r\n				<br></td>\r\n			<td colspan=\\\"2\\\">\r\n				Thanh toán qua cổng thanh toán Bảo Kim để tiết kiệm thời gian và được đảm bảo về khoản tiền mua sản phẩm.<br>\r\n				Email đăng ký thanh toán qua cổng thanh toán Bảo Kim :&nbsp;anhntl@nhanh.vn</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\\"2\\\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\\\"2\\\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<br>\r\n	<span style=\\\"font-size: medium; font-weight: bold;\\\">Công ty TNHH Bán Lẻ Nhanh cam \r\nkết đảm bảo về khoản tiền thanh toán của khách hàng. Nếu có vấn đề gì \r\nxin bạn vui lòng liên hệ theo số của công ty chúng tôi !<br>\r\n	<br>\r\n	<span style=\\\"font-size: large; color: #ff0000;\\\">Hotline :&nbsp; 01686.880.838<br></span></span></p>','igf',0,NULL),(65,43,'&nbsp;','Hình thức thanh toán','<table border=\\\"0\\\" height=\\\"184\\\" width=\\\"630\\\"><tbody><tr><td colspan=\\\"2\\\"><h2><span style=\\\"font-size: 18px;\\\">Thanh toán tại nhà</span></h2></td></tr><tr><td valign=\\\"top\\\"><p><img alt=\\\"\\\" src=\\\"http://tienichgiadinh.vn/images/news/tainha.jpg\\\" style=\\\"float: left; margin: 5px 10px;\\\" height=\\\"153\\\" width=\\\"150\\\"></p></td><td align=\\\"left\\\" valign=\\\"top\\\"><span style=\\\"font-weight: bold; color: rgb(0, 0, 128);\\\">Muare24h.net</span> sẽ xác nhận đơn hàng và tổng giá trị đơn hàng với khách hàng. Sau khi xác nhận, nhân viên giao nhận của chúng tôi sẽ chuyển sản phẩm tới địa chỉ của khách hàng và thu tiền trực tiếp tại địa chỉ của khách hàng. </td></tr><tr><td colspan=\\\"2\\\"><h2><span style=\\\"font-size: 18px;\\\">Chuyển khoản bằng máy ATM</span></h2></td></tr><tr><td valign=\\\"top\\\"><p><img alt=\\\"\\\" src=\\\"http://tienichgiadinh.vn/images/news/ATM.jpg\\\" style=\\\"float: left; margin: 5px 10px;\\\" align=\\\"\\\" border=\\\"0\\\" height=\\\"153\\\" width=\\\"150\\\"></p></td><td align=\\\"left\\\" valign=\\\"top\\\"><p> Danh sách số tài khoản ngân hàng của <span style=\\\"font-weight: bold; color: rgb(0, 0, 128);\\\">Muare24h.net</span><span style=\\\"font-weight: bold;\\\"></span></p> Chủ tài khoản: Nguyễn xuân Tuyền<br><span class=\\\"userContent\\\">Số tài khoản: 0491000006468<br> Ngân hàng: Vietcombank</span></td></tr><tr><td colspan=\\\"2\\\"><h2><span style=\\\"font-size: 18px;\\\">Internet Banking</span></h2></td></tr><tr><td valign=\\\"top\\\"><p><img alt=\\\"\\\" src=\\\"http://tienichgiadinh.vn/images/news/ibk.jpg\\\" style=\\\"float: left; margin: 5px 10px;\\\" align=\\\"\\\" border=\\\"0\\\" height=\\\"153\\\" width=\\\"150\\\"></p></td><td align=\\\"left\\\" valign=\\\"top\\\"><p> Khách hàng cần có đăng ký sử dụng dịch vụ internet banking tại ngân hàng để chuyển khoản. Sau khi chuyển khoản bạn vui lòng liên hệ để thông báo lại với chúng tôi, chúng tôi sẽ xác nhận và chuyển sản phẩm tới địa chỉ của khách hàng.Danh sách số tài khoản ngân hàng của <span style=\\\"font-weight: bold; color: rgb(0, 0, 128);\\\">Muare24h.net</span><span style=\\\"font-weight: bold; color: rgb(0, 0, 128);\\\"></span></p> Chủ tài khoản: Nguyễn xuân Tuyền<br><span class=\\\"userContent\\\">Số tài khoản: 0491000006468<br> Ngân hàng: Vietcombank</span></td></tr></tbody></table><br><p><span style=\\\"font-size: medium; font-weight: bold;\\\"><span style=\\\"font-weight: bold; color: rgb(0, 0, 205);\\\"><span style=\\\"font-weight: bold; color: rgb(0, 0, 128);\\\">Muare24h.net</span></span><span style=\\\"color: rgb(0, 0, 205);\\\"> </span>cam kết đảm bảo về khoản tiền thanh toán của khách hàng. Nếu có vấn đề gì xin bạn vui lòng liên hệ theo số của công ty chúng tôi !<br><span style=\\\"font-size: large; color: rgb(255, 0, 0);\\\">Hotline : 01686.880.838</span></span></p>','igf',0,NULL),(64,42,'&nbsp;','Hướng dẫn mua hàng','<div style=\"text-align: center;\"><br><div style=\"text-align: left;\"><span style=\"font-weight: bold;\">Bước 1</span>: Khách hàng truy cập Website <span style=\"font-weight: bold; color: rgb(0, 0, 128);\">http://dothosondong.us</span> chọn mua sản phẩm<br><span style=\"font-weight: bold;\">Bước 2</span>: <span style=\"font-weight: bold; color: rgb(0, 0, 128);\">Dốthosondong</span><span style=\"font-weight: bold; color: rgb(0, 0, 128);\">.net</span> xem đơn hàng của khách hàng<br><span style=\"font-weight: bold;\">Bước 3</span>: <span style=\"font-weight: bold; color: rgb(0, 0, 128);\">Dothosondong</span><span style=\"font-weight: bold; color: rgb(0, 0, 128);\">.net </span>xác nhân đơn hàng bằng cách gọi điện cho quý khách hàng<br><span style=\"font-weight: bold;\">Bước 4</span>: Khách hàng nhận hàng hóa và thanh toán<br>(<span style=\"font-weight: bold;\">Lưu ý:</span> Vận chuyển miễn phí cho khách hàng trong nội thành!)<br></div></div>','admin',0,NULL),(67,45,'&nbsp;','Câu hỏi khác','&nbsp;<span style=\\\\\"font-weight: bold; \\\\\">Câu hỏi khác :</span><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#1\\\\\" target=\\\\\"_self\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">1. Làm thế nào để mua hàng trực tuyến ?</a></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#2\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">2. Chúng tôi có cần đăng ký thành viên để được mua hàng trên sieuthitienich.vn không ?</a></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#3\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">3. Những cách liên hệ để mua hàng ?</a></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#4\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">4. Khi tôi hoàn tất việc đặt mua hàng, muốn xem lại thông tin đặt hàng thì vào đâu để kiểm tra ?</a></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#5\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">5. Tôi lo ngại về sản phẩm bán qua mạng không như thực tế thì trả hàng được không ?</a></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#6\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">6. Chất lượng hàng hoá của sieuthitienich.vn như thế nào ?</a></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#7\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">7. Vận chuyển hàng hoá ở các tỉnh ngoài Hà Nội ra sao ?</a></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://nhanh.vn/pages/cau-hoi-khac.html#9\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">8. Sản phẩm giảm giá có được hỗ trợ vận chuyển không ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#10\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">9. Mua hàng sau 24 giờ có được trả lại hàng không và trong trường hợp nào được trả lại ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#11\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">10. Khi trả lại hàng lỗi, hỏng tôi có phải trả phí dịch vụ không ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#12\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">11. Tôi là khách hàng trung thành của sieuthitienich.vn, được hưởng những ưu đãi gì ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#13\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">12. Giá cả trên http://sieuthitienich.vn có phải giá rẻ nhất ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#14\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">13. Chúng tôi là tổ chức công ty khi mua hàng có đầy đủ hoá đơn chứng từ không ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#15\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">14. Khi đặt hàng, bao lâu chúng tôi có thể nhận được sản phẩm ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#16\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">15. Tính phí giao hàng như thế nào ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#17\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">16. http://sieuthitienich.vn có giao hàng tới địa chỉ khách với địa chỉ thanh toán không ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#18\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">17. Giờ làm việc của http://sieuthitienich.vn ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#19\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">18. Dịch vụ chăm sóc khách hàng như thế nào ?</span></a></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://sieuthitienich.vn/pages/cau-hoi-khac.html#20\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\">19. Đến đâu để mua hàng trực tiếp ?</a></span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: large; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-weight: bold; \\\\\">Trả&nbsp; lời :</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\"><a name=\\\\\"1\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a>1. Làm thế nào để mua hàng trực tuyến ?</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><span style=\\\\\"font-weight: bold; font-style: italic; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 18px; text-decoration: underline; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 22px; \\\\\">s</span>ieuthitienich.<span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 16px; \\\\\">vn</span></span></span><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 16px; \\\\\">&nbsp;</span>&nbsp;ra đời nhằm tiết kiệm thời gian mua sắm và đảm bảo lợi ích cho Khách Hàng.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Luôn đặt việc phục vụ Khách hàng làm hàng đầu, chỉ với 3 click : MUA HÀNG - THANH TOÁN - NHẬN</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">HÀNG.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Khách hàng sẽ rất hài lòng với sản phẩm và dịch vụ của&nbsp;</span>chúng tôi<br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\"><a name=\\\\\"2\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a>2. Chúng tôi có cần đăng ký thành viên để được mua hàng trên&nbsp;</span><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; font-style: italic; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 18px; text-decoration: underline; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 22px; \\\\\">s</span>ieuthitienich.<span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-size: 16px; \\\\\">vn</span></span></span><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\">&nbsp; không ?</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Bạn không cần đăng ký trên website http://sieuthitienich.vn mà vẫn có thể mua hàng.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Tuy nhiên để&nbsp;<span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn</span>&nbsp;phục vụ Quý khách một cách tốt nhất, khi đặt hàng Quý khách vui lòng cung</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">cấp đầy đủ thông tin chính xác – tạo điều kiện thuận lợi cho&nbsp;<span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn</span>&nbsp;giao hàng và nhận thanh toán</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">nhanh chóng. sieuthitienich<span style=\\\\\"font-weight: bold; \\\\\">.vn</span>&nbsp;có quyền hủy các đơn đặt hàng không rõ ràng hay không chịu trách nhiệm đối với các</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">trường hợp giao hàng chậm trễ hay không đầy đủ… mà nguyên nhân là do đăng ký địa chỉ giao hàng không chính</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">xác.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Hãy đăng ký để được những ưu đãi và khuyến mãi từ sieuthitienich.vn !</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\"><a name=\\\\\"3\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a>3. Những cách liên hệ để mua hàng ?</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">* Khách hàng gọi điện trực tiếp đến công ty để đặt mua hàng.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">* Đặt hàng qua website http://sieuthitienich.vn</span>.<br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"4\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">4. Khi tôi hoàn tất việc đặt mua hàng, muốn xem lại thông tin đặt hàng thì vào đâu để kiểm tra ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a href=\\\\\"http://nhanh.vn/cau-hoi-khac/#1\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 0); text-decoration: none; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">vui lòng xác nhận lại với nhân viên của sieuthitienich.vn để biết trạng thái sản phẩm mua.</span></a></span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\"><a name=\\\\\"5\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a>5. Tôi lo ngại về sản phẩm bán qua mạng không như thực tế thì trả hàng được không ?</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Điều này quý khách hàng rất yên tâm. sieuthitienich.vn có dịch vụ hoàn trả lại sản phẩm nếu có bất kỳ lý do nào</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">khiến bạn không hài lòng 100% với sản phẩm bạn đã đặt. Bạn hoàn toàn có thể hoàn trả lại sản phẩm cho</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">sieuthitienich.vn mà không mất bất kỳ một khoản phí nào trong v</span><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">òng 02 ngày.</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Quy định đối với sản phẩm hoàn trả:</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); text-align: justify; \\\\\">&nbsp;</p><ul style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><li style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Sản phẩm chưa được sử dụng.</span></li></ul><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><ul style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><li style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Đầy đủ bao bì, tem nhãn, phiếu bảo hành, phiếu mua hàng.</span></li></ul><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><ul style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><li style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Miễn phí hoàn trả sản phẩm.</span></li></ul><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><ul style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><li style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Vui lòng không gửi trả sản phẩm cho hãng sản xuất. Việc hoàn trả được thực hiện tại văn phòng của</span></li></ul><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><ul style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><li style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">sieuthitienich.vn</span></li></ul><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\"><a name=\\\\\"6\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a>6. Chất lượng hàng hoá của sieuthitienich.vn như thế nào ?</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">sieuthitienich.vn nhập hàng từ những thương hiệu nổi tiếng, tin cậy&nbsp; như : Kangaroo, Myota, Supor, Komasu,</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Philiger,&nbsp;</span><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Turina,&nbsp;</span><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Lock &amp; lock, Homicook, Philips, Mobicool, Bahama, Tosy.,Facare.Titi... Khách hàng sẽ rất yên</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">tâm khi mua hàng tại Sieuthitienich.vn.</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\"><a name=\\\\\"7\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a>7. Vận chuyển hàng hoá ở các tỉnh ngoài Hà Nội ra sao ?</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Đối với sản phẩm khách mua hàng ở các tỉnh xa, Khách hàng vui lòng thanh toán tiền sản phẩm và tiền cước phí vận</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">chuyển cho sieuthitienich.vn trước. Khi nhận được tiền của quý khách, sieuthitienich.vn nhanh chóng chuyển hàng</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">đến tay khách hàng trong thời gian sớm nhất.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\"><a name=\\\\\"9\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a>8. Sản phẩm giảm giá có được hỗ trợ vận chuyển không ?</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">sieuthitienich.vn đang hỗ trợ giá tốt nhất cho quý khách hàng. Đối với các sản phẩm thông thường sẽ được miễn phí</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">vận chuyển trong nội thành Hà Nội.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"10\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">9. Mua hàng sau 24 giờ có được trả lại hàng không và trong trường hợp nào được trả lại ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Sản phẩm đã mua tại sieuthitienich.vn trong 48 giờ có thể trả lại mà không phải thanh toán bất kỳ phụ phí nào.</span><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"11\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">10. Khi trả lại hàng lỗi, hỏng tôi có phải trả phí dịch vụ không ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Sản phẩm trong thời gian bảo hành thì quý khách hàng sẽ được bảo hành miễn phí. Nếu các sản phẩm không bảo</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">hành như đồ chơi... Quý khách hàng vui lòng thanh toán việc sửa chữa hoặc thay mới sản phẩm.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\">Khi trả lại sản phẩm trong 48&nbsp; giờ bạn không mất một loại phụ phí nào.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"12\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">11. Tôi là khách hàng trung thành của sieuthitienich.vn, được hưởng những ưu đãi gì ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Khi là khách hàng trung thành của sieuthitienich.vn, bạn sẽ được hưởng những mức ưu đãi lớn : Tặng thẻ khách</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">hàng giảm giá, Tặng kèm sản phẩm tốt, chất lượng. ....</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"13\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">12. Giá cả trên http://sieuthitienich.vn có phải giá rẻ nhất ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Giá cả các sản phẩm trên&nbsp;<span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn&nbsp;</span>là giá thống nhất tương đương với giá niêm yết tại các siêu thị và</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">shop lớn do chính hãng và nhà phân phối đưa ra. Chúng tôi không kinh doanh các hàng hoá không có chính sách giá</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">rõ ràng, giá cả không thống nhất, do đó khi mua hàng tại&nbsp;<span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn&nbsp;</span>Quý khách không phải lo lắng về</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">giá cả.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"14\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">13. Chúng tôi là tổ chức công ty khi mua hàng có đầy đủ hoá đơn chứng từ không ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn&nbsp;</span>là kênh bán hàng trực tuyến , hàng hoá có nguồn gốc xuất xứ và chứng từ đầy đủ. Nếu</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Quý khách có yêu cầu chúng tôi luôn có đầy đủ hoá đơn VAT cho Quý khách.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"15\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">14. Khi đặt hàng, bao lâu chúng tôi có thể nhận được sản phẩm ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn</span>&nbsp;luôn sẵn sàng phục vụ giao hàng từ 8g đến 18g30 hằng ngày. Ngay khi nhận được đơn</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">hàng, chậm nhất là sau 8 giờ chúng tôi có thể giao hàng cho Quý khách (trong khu vực nội thành Hà Nội). Tuy</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">nhiên, Quý khách cũng có thể yêu cầu thời gian giao hàng sao cho thuận tiện nhất với thời gian của Quý khách.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"16\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">15. http://sieuthitienich.vn có tính phí giao hàng không ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><span style=\\\\\"font-weight: bold; \\\\\">Chúng tôi</span>&nbsp;giao hàng hoàn toàn miễn phí cho Quý khách ở các quận nội thành Hà Nội. Đối với các Quý khách ở</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">phạm vi ngoại thành hay các tỉnh lân cận,&nbsp;<span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn</span>&nbsp;sẵn sàng phục vụ với chi phí giao hàng tương ứng</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">với chi phí của bưu điện đang áp dụng, phí giao hàng này sẽ được tính vào trong hoá đơn mua hàng sau khi được sự</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">đồng ý của Quý khách qua xác nhận mail hoặc trao đổi qua điện thoại.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"17\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">16. http://sieuthitienich.vn có giao hàng tới địa chỉ khách với địa chỉ thanh toán không ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Chúng tôi sẵn sàng. Trong trường hợp này chúng tôi xin phép được nhận thanh toán trước khi giao.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"18\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">17. Giờ làm việc của http://sieuthitienich.vn ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><span style=\\\\\"font-weight: bold; \\\\\">http://sieuthitienich.vn</span>&nbsp;nhận đặt hàng trực tuyến 24/24 – 7 ngày/tuần. Chúng tôi sẽ giao hàng trong ngày khi nhận</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">được đơn đặt hàng từ Quý khách. Những đơn đặt hàng sau 16h sẽ được giao hàng vào&nbsp;ngày hôm sau. Đối với các</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">trường hợp đặc biệt khác xin vui lòng liên hệ trực tiếp, chúng tôi sẵn sàng đáp ứng.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"19\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">18. Dịch vụ chăm sóc khách hàng như thế nào ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">Bất cứ lúc nào Quý khách có câu hỏi liên quan đến đặt hàng, hàng hóa, phương thức giao dịch, sử dụng hàng</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">hóa…đội ngũ tư vấn trực tuyến luôn sẵn sàng trả lời trực tuyến qua YM, E-mail, Điện thoại… Chúng tôi chào đón</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\">mọi câu hỏi và góp ý của Quý khách.</span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; \\\\\"><a name=\\\\\"20\\\\\" style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; outline-style: none; outline-width: initial; outline-color: initial; \\\\\"></a><span style=\\\\\"font-weight: bold; \\\\\">19. Đến đâu để mua hàng trực tiếp ?</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\">&nbsp;</p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\">Khách hàng có thể đến địa chỉ sau để mua hàng trực tiếp :<br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 255); \\\\\">&nbsp; &nbsp;Trụ sở: số 53 Nguyễn viết xuân, P Khương mai ,Q Thanh Xuân, Hà Nội</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\">&nbsp;&nbsp; Điện thoại: 04.6684.9895/ &nbsp; &nbsp; 01998.388.388<br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\"><br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;&nbsp;<br style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \\\\\">&nbsp;&nbsp; Website : http://sieuthitienich.vn&nbsp;</span></span></p><p style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: Arial, \\\'Times new roman\\\', Tahoma; font-size: 13px; line-height: 14px; background-color: rgb(255, 255, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(0, 0, 255); \\\\\"><span style=\\\\\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; font-family: \\\'times new roman\\\', times; font-size: medium; font-weight: bold; \\\\\">&nbsp;&nbsp; Email: sieuthitienich.vn@gmail.com&nbsp;</span></span></p>','',0,NULL);
/*!40000 ALTER TABLE `tbl_content_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_document`
--

DROP TABLE IF EXISTS `tbl_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_document` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) NOT NULL,
  `loai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `urlfile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `outsite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `assign` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `downloads` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_document`
--

LOCK TABLES `tbl_document` WRITE;
/*!40000 ALTER TABLE `tbl_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_document_text`
--

DROP TABLE IF EXISTS `tbl_document_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_document_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `lag_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_document_text`
--

LOCK TABLES `tbl_document_text` WRITE;
/*!40000 ALTER TABLE `tbl_document_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_document_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_email`
--

DROP TABLE IF EXISTS `tbl_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_email`
--

LOCK TABLES `tbl_email` WRITE;
/*!40000 ALTER TABLE `tbl_email` DISABLE KEYS */;
INSERT INTO `tbl_email` VALUES (1,'Nh?p email c?a b?n'),(2,'Nh?p email c?a b?n'),(3,'Nh?p email c?a b?n'),(4,'-1'),(5,'Nh?p email c?a b?n'),(6,'Nh?p email c?a b?n'),(7,'Nh?p email c?a b?n');
/*!40000 ALTER TABLE `tbl_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_event`
--

DROP TABLE IF EXISTS `tbl_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ismenu` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_event`
--

LOCK TABLES `tbl_event` WRITE;
/*!40000 ALTER TABLE `tbl_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_event_detail`
--

DROP TABLE IF EXISTS `tbl_event_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_event_detail` (
  `id_event_detail` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `old_price` decimal(10,0) NOT NULL,
  `cur_price` decimal(10,0) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `sales` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_event_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_event_detail`
--

LOCK TABLES `tbl_event_detail` WRITE;
/*!40000 ALTER TABLE `tbl_event_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_event_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gmember`
--

DROP TABLE IF EXISTS `tbl_gmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_gmember` (
  `gmem_id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `isadmin` int(11) DEFAULT '1',
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`gmem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gmember`
--

LOCK TABLES `tbl_gmember` WRITE;
/*!40000 ALTER TABLE `tbl_gmember` DISABLE KEYS */;
INSERT INTO `tbl_gmember` VALUES (1,0,'Super admin',NULL,1,1),(2,1,'Admin',NULL,1,1),(3,2,'Content Manager',NULL,1,1),(4,2,'Product Manager',NULL,1,1),(11,2,'Member Manager','',1,1),(12,0,'user','',1,1);
/*!40000 ALTER TABLE `tbl_gmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hunter_cheaper`
--

DROP TABLE IF EXISTS `tbl_hunter_cheaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hunter_cheaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,0) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `joindate` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `number_buyer` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hunter_cheaper`
--

LOCK TABLES `tbl_hunter_cheaper` WRITE;
/*!40000 ALTER TABLE `tbl_hunter_cheaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_hunter_cheaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_image`
--

DROP TABLE IF EXISTS `tbl_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_image`
--

LOCK TABLES `tbl_image` WRITE;
/*!40000 ALTER TABLE `tbl_image` DISABLE KEYS */;
INSERT INTO `tbl_image` VALUES (1,0,'images/dich-vu-webmail.jpg',0,1),(2,24,'images/kanggaroo1.jpg',0,1),(3,24,'images/sieuthitienich_vn.jpg',0,1),(5,25,'images/kangaroo3.jpg',0,1),(6,24,'images/sieuthitienich_vnn.jpg',0,1),(8,27,'images/facare0.jpg',0,1),(9,28,'images/nsam20.jpg',0,1),(10,29,'images/maytrongraumauden0.jpg',0,1),(11,30,'images/Untitledddd-10.jpg',0,1),(14,33,'images/6.jpg',0,1),(15,34,'images/666.jpg',0,1),(17,63,'images/banlak760.jpg',0,1),(18,36,'images/4.jpg',0,1),(19,18,'images/banlakg750.jpg',0,1),(20,37,'images/7.jpg',0,1),(26,48,'images/HYB54-10.jpg',0,1),(27,64,'images/KG560.jpg',0,1),(30,67,'images/binhnonglanh2.jpg',0,1),(31,68,'images/binh nong lanh 4.jpg',0,1),(32,69,'images/0379339854875272May-lam-kem-Facare20.jpg',0,1),(33,70,'images/vi0.jpg',0,1),(35,72,'images/hopcom0.jpg',0,1),(36,38,'images/1.jpg',0,1),(38,74,'images/caynuongnongsh0.jpg',0,1),(39,20,'images/11.jpg',0,1),(40,21,'images/Autumn-Wallpaper-HD.jpg',0,1),(41,26,'images/379338_526095840744471_878816430_n.jpg',0,1),(42,31,'images/77.jpg',0,1),(44,1,'images/40.jpg',0,1),(45,32,'images/image.jpg',0,1),(48,4,'images/44.jpg',0,1),(49,4,'images/41.jpg',0,1),(50,2,'images/5.jpg',0,1),(51,33,'images/223.jpg',0,1),(53,39,'images/223.jpg',0,1),(55,40,'images/22.jpg',0,1),(56,42,'images/22.jpg',0,1),(59,43,'images/45.jpg',0,1),(60,41,'images/63.jpg',0,1);
/*!40000 ALTER TABLE `tbl_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_indexlink`
--

DROP TABLE IF EXISTS `tbl_indexlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_indexlink` (
  `index_id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`index_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_indexlink`
--

LOCK TABLES `tbl_indexlink` WRITE;
/*!40000 ALTER TABLE `tbl_indexlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_indexlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_language` (
  `lag_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'front_end',
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_language`
--

LOCK TABLES `tbl_language` WRITE;
/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */;
INSERT INTO `tbl_language` VALUES (1,'vi','Viá»‡t Nam','vi.png','back_end',1,1),(2,'en','English','en.png','back_end',0,1),(3,'vi','Việt Nam','vi.png','front_end',0,1),(4,'en','English','en.png','front_end',1,1),(7,'korea','Hàn Quốc','korea.png','front_end',0,0);
/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_location`
--

DROP TABLE IF EXISTS `tbl_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_location` (
  `loc_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_par` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` longtext COLLATE utf8_unicode_ci,
  `popula` text COLLATE utf8_unicode_ci,
  `lat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lng` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poly` text COLLATE utf8_unicode_ci,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_location`
--

LOCK TABLES `tbl_location` WRITE;
/*!40000 ALTER TABLE `tbl_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip_login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL,
  `loglogin` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=680 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_login`
--

LOCK TABLES `tbl_login` WRITE;
/*!40000 ALTER TABLE `tbl_login` DISABLE KEYS */;
INSERT INTO `tbl_login` VALUES (679,19,'113.178.67.135','2015-02-01 17:55:01','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `tbl_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `mem_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `joindate` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `gmem_id` int(11) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  `par_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mem_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES (19,'admin','e9fd363bedc114628fe2cdce1493db15','Nguyen','Trung','1990-01-28','0','','01689942417','01689942417','anh.trung281@gmail.com','2013-01-23 00:00:00','2015-02-01 05:46:49',1,1,NULL),(20,'ZwTfCx','df0f73cdf7561275cf220cfe6774249f','chau','vang','1997-09-19','0','hà nội','0','0967765507','chauvalx@outlook.com.vn','2014-12-16 05:26:49','0000-00-00 00:00:00',12,1,NULL),(21,'rVe6BL','0144712dd81be0c3d9724f5e56ce6685','lpmktdck','lpmktdck','1970-01-01','0','cbeHsJmvUXvWYgwaNe','0','WkprTmriZgvfLcR','lpmktdck','2015-01-03 06:34:59','0000-00-00 00:00:00',12,1,NULL);
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menus`
--

DROP TABLE IF EXISTS `tbl_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menus` (
  `mnu_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mnu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menus`
--

LOCK TABLES `tbl_menus` WRITE;
/*!40000 ALTER TABLE `tbl_menus` DISABLE KEYS */;
INSERT INTO `tbl_menus` VALUES (1,'main-menu','Menu chính của website<br>',1),(2,'menu-top','Menu top<br>',1),(3,'Menu hướng dẫn cách mua hàng','&nbsp;',0),(4,'menu bottom','&nbsp;',1);
/*!40000 ALTER TABLE `tbl_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menus_text`
--

DROP TABLE IF EXISTS `tbl_menus_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menus_text` (
  `mnu_id_text` int(11) NOT NULL AUTO_INCREMENT,
  `mnu_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lag_id` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`mnu_id_text`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menus_text`
--

LOCK TABLES `tbl_menus_text` WRITE;
/*!40000 ALTER TABLE `tbl_menus_text` DISABLE KEYS */;
INSERT INTO `tbl_menus_text` VALUES (1,1,'Main menu',0,1),(12,2,'menu-top',0,NULL),(6,80,'Sport menu',0,NULL),(13,3,'Menu hướng dẫn cách mua hàng',0,NULL),(14,4,'menu bottom',0,NULL);
/*!40000 ALTER TABLE `tbl_menus_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mnuitem`
--

DROP TABLE IF EXISTS `tbl_mnuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mnuitem` (
  `mnuitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `par_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `mnu_id` int(11) NOT NULL DEFAULT '0',
  `viewtype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `con_id` int(11) NOT NULL DEFAULT '0',
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mnuitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mnuitem`
--

LOCK TABLES `tbl_mnuitem` WRITE;
/*!40000 ALTER TABLE `tbl_mnuitem` DISABLE KEYS */;
INSERT INTO `tbl_mnuitem` VALUES (40,0,'Trang chủ','Trang chủ<br>',2,'link',0,0,'index.php','New menu 2',0,1),(41,0,'trang-chu','&nbsp;',1,'link',0,0,'index.php','active',0,1),(42,0,'Giới thiệu','&nbsp;',1,'article',0,1,'','',1,1),(43,0,'Sản phẩm','&nbsp;',1,'link',0,0,'index.php?com=catalogs','',3,1),(46,0,'Tin tức','&nbsp;',1,'block',4,0,'','',2,1),(48,0,'huong-dan-mua-hang','&nbsp;',1,'block',24,0,'','',4,1),(49,0,'Liên hệ','Liên hệ <br>',1,'link',0,0,'index.php?com=contact','',5,1),(50,0,'Giới thiệu','&nbsp;Giới thiệu',2,'block',1,0,'','',3,1),(51,0,'Liên hệ','&nbsp;',2,'block',1,0,'','',2,1),(57,0,'Hướng dẫn mua hàng','&nbsp;',3,'article',0,42,'','',0,1),(58,0,'Hình thức thanh toán','&nbsp;',3,'article',0,43,'','',0,1),(59,0,'Vận chuyển sản phẩm','&nbsp;',3,'article',0,44,'','',0,1),(60,0,'Giới thiệu','&nbsp;',4,'article',0,37,'','',0,1);
/*!40000 ALTER TABLE `tbl_mnuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mnuitem_text`
--

DROP TABLE IF EXISTS `tbl_mnuitem_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mnuitem_text` (
  `mnuitem_id_text` int(11) NOT NULL AUTO_INCREMENT,
  `mnuitem_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lag_id` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT NULL,
  PRIMARY KEY (`mnuitem_id_text`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mnuitem_text`
--

LOCK TABLES `tbl_mnuitem_text` WRITE;
/*!40000 ALTER TABLE `tbl_mnuitem_text` DISABLE KEYS */;
INSERT INTO `tbl_mnuitem_text` VALUES (66,49,'Liên hệ',0,NULL),(65,48,'Hướng dấn mua hàng',0,NULL),(63,46,'Tin tức',0,NULL),(60,43,'Sản phẩm',0,NULL),(59,42,'Giới thiệu',0,NULL),(58,41,'Trang chủ',0,NULL),(56,40,'Trang chủ',0,NULL),(67,50,'Giới thiệu',0,NULL),(68,51,'Liên hệ',0,NULL),(75,57,'Hướng dẫn mua hàng',0,NULL),(76,58,'Hình thức thanh toán',0,NULL),(77,59,'Vận chuyển sản phẩm',0,NULL),(78,60,'Giới thiệu',0,NULL);
/*!40000 ALTER TABLE `tbl_mnuitem_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modtype`
--

DROP TABLE IF EXISTS `tbl_modtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modtype` (
  `modtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`modtypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modtype`
--

LOCK TABLES `tbl_modtype` WRITE;
/*!40000 ALTER TABLE `tbl_modtype` DISABLE KEYS */;
INSERT INTO `tbl_modtype` VALUES (1,'mainmenu','Main menu'),(2,'html','Use HTML'),(3,'login','Login'),(4,'banner','Banner'),(5,'latestnew','Latest News'),(6,'footer','Footer'),(7,'hotnews','Hot news'),(8,'support','Support'),(9,'catalog','Catalogs'),(10,'latestpro','Latest Product'),(11,'comments','Comment'),(12,'search','Tim kiem');
/*!40000 ALTER TABLE `tbl_modtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modules`
--

DROP TABLE IF EXISTS `tbl_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modules` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `viewtitle` int(11) NOT NULL DEFAULT '0',
  `mnu_id` int(11) NOT NULL,
  `cat_id` int(50) NOT NULL,
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mnuids` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modules`
--

LOCK TABLES `tbl_modules` WRITE;
/*!40000 ALTER TABLE `tbl_modules` DISABLE KEYS */;
INSERT INTO `tbl_modules` VALUES (17,'comments',0,0,0,'','user5','all','',0,1),(18,'latestpro',1,0,16,'','user3','43,','',0,1),(22,'latestnew',0,0,28,'slide','navitor','all','',0,1),(24,'catalog',0,0,0,'brow1','top','all','catalog',0,1),(25,'latestpro',1,0,0,'giamgia','user1','all','',0,0),(29,'latestpro',1,0,0,'otherpro','right','all','',0,0),(30,'latestpro',1,0,0,'hotnew','right','all','banchay',1,0),(33,'search',0,0,0,'','search','all','search',0,1),(34,'latestpro',0,0,0,'lastestnew','right','all','',2,0),(35,'search',0,0,0,'brow2','user9','all','',0,1),(36,'html',0,0,0,'popup','user4','40,','popup',0,1),(41,'catalog',0,0,0,'brow3','left','all','',0,1),(42,'mainmenu',1,3,0,'brow2','user1','all','mod-help',0,1),(44,'mainmenu',1,3,0,'brow1','bottom','all','',0,1),(45,'html',1,0,0,'chuchay','bottom','all',' box-module',0,1),(46,'latestpro',1,0,13,'default','user2','all','',0,1),(48,'html',1,0,0,'chuchay','right','all','support box-module ',4,1),(51,'html',0,0,0,'chuchay','user6','all','',0,1),(54,'html',1,0,0,'chuchay','right','all','',5,1),(55,'html',1,0,0,'chuchay','right','all','',3,1),(60,'html',0,0,0,'chuchay','header','all','buy',0,1),(62,'login',1,0,0,'','header','all','login',0,1),(63,'html',0,0,0,'chuchay','header','all','xe',0,1),(64,'support',0,0,0,'','header','all','online',0,1),(65,'html',1,0,0,'regis','banenr','all','regis_email',0,1);
/*!40000 ALTER TABLE `tbl_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modules_text`
--

DROP TABLE IF EXISTS `tbl_modules_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modules_text` (
  `mod_text_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `lag_id` int(11) DEFAULT NULL,
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`mod_text_id`),
  KEY `FK_tbl_modules_text` (`mod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modules_text`
--

LOCK TABLES `tbl_modules_text` WRITE;
/*!40000 ALTER TABLE `tbl_modules_text` DISABLE KEYS */;
INSERT INTO `tbl_modules_text` VALUES (14,17,'Comment product','',0,1),(15,18,'Sản phẩm liên quan','',0,1),(19,22,'Slide-Show','',0,1),(21,24,'Danh mục sản phẩm','',0,1),(22,25,'Sản phẩm mới','',0,1),(26,29,'San pham mua chung','',0,1),(27,30,'Sản phẩm bán chạy nhất','',0,1),(30,33,'Search','',0,1),(31,34,'Sản phẩm đề nghị','',0,1),(32,35,'search advance','',0,1),(33,36,'Popup','<span id=\"close\">Đóng</span><img src=\"http://dothosondong.us/images/popup.png\">',0,1),(38,41,'San pham trang chu','',0,1),(39,42,'Hướng dẫn!','',0,1),(41,44,'Hướng dẫn','',0,1),(42,45,'Liên hệ','&nbsp;Liên hệ với chúng tôi để được tư vấn tốt nhất.<br>&nbsp;Điện thoại: 0986 857 881<br>&nbsp;Hotline : <span style=\"color: rgb(128, 0, 0); font-weight: bold;\">0986 957 881</span><br>&nbsp;Email: &nbsp;khanhhungdj@gmail.com<br><br>',0,1),(43,46,'Sản phẩm mới','',0,1),(45,48,'Đối tác','<a href=\"http://senvietjsc.vn/\" title=\"Làng nghề mỹ nghệ Sơn Đồng\"><img alt=\"\" src=\"http://dothosondong.us/images/langnghesondong.JPG\" border=\"0px\" align=\"\"></a> ',0,1),(48,51,'Banner trái',' <img alt=\"\" src=\"http://dothosondong.us/images/slile-show.png\" align=\"\" border=\"0px\"><br>',0,1),(51,54,'Sản phẩm','<a href=\\\"tienichgiadinh.vn/111/Choi-lau-nha-sooxto.html\\\"><img src=\\\"http://tienichgiadinh.vn/images/girlmagic.jpg\\\" alt=\\\"\\\" align=\\\"\\\" border=\\\"0\\\"></a><br><br><a href=\\\"../103/May-lam-sua-chua-Myota.html\\\" target=\\\"_self\\\"><img src=\\\"../images/baby.jpg\\\" alt=\\\"\\\" align=\\\"\\\" border=\\\"0\\\"></a><br><br><a href=\\\"../110/Hop-com-komasu.html\\\" target=\\\"_self\\\"><img src=\\\"../images/family.jpg\\\" alt=\\\"\\\" align=\\\"\\\" border=\\\"0\\\"></a><br>',0,1),(52,55,'Liên hệ','<span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: bold;\">HOTLINE: Nguyễn Khánh Hùng</span></span><div><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-weight: bold;\"><br></span>&nbsp; &nbsp;<span style=\"font-weight: bold;\"> &nbsp;</span></span><span style=\"font-weight: bold;\"><span style=\"font-size: 14pt;\">0986957881</span></span><div><span style=\"color: rgb(255, 0, 0); font-weight: bold;\">HOTLINE: Nguyễn Khánh Hùng</span></div><div><span style=\"color: rgb(255, 0, 0); font-weight: bold;\">&nbsp; &nbsp; &nbsp;</span><span style=\"font-weight: bold;\"><span style=\"font-size: 14pt;\">0433994661</span></span></div><div><span style=\"color: rgb(255, 0, 0);\"><br><span style=\"font-weight: bold;\">EMAIL:</span><br>&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color: rgb(0, 0, 0);\">khanhhungdj@gmail.com</span></span><br></div></div>',0,1),(57,60,'Bán hàng online',' <img style=\"margin-right: 5px;\" alt=\"\" src=\"http://dothosondong.us/images/hotline.png\" align=\"\" border=\"0\" height=\"18\" width=\"19\"><span style=\"color: rgb(170, 4, 4); font-weight: bold;\">Bán hàng: <span style=\"color: rgb(86, 86, 86);\">8h - 22h (tất cả các ngày trong tuần)</span></span><p><img style=\"margin-right: 5px;\" alt=\"\" src=\"http://dothosondong.us/images/icon_phone.png\" align=\"\" border=\"0\" height=\"11\" width=\"15\"><span style=\"color: rgb(170, 4, 4); font-weight: bold;\">HOTLINE : <span style=\"color: rgb(86, 86, 86);\">0986 957 881</span></span></p><p><img style=\"margin-right: 5px;\" alt=\"\" src=\"http://dothosondong.us/images/icon_phone.png\" align=\"\" border=\"0\" height=\"11\" width=\"15\"><span style=\"color: rgb(170, 4, 4); font-weight: bold;\">HÀ NỘI : <span style=\"color: rgb(86, 86, 86);\">0986 957 881<br></span></span></p>',0,1),(59,62,'Login','',0,1),(60,63,'xe day',' <img style=\"\" src=\"http://dothosondong.us/images/xe.png\" alt=\"\" align=\"\" border=\"0\"><span style=\"color: rgb(128, 0, 0);\"> Giao hàng và thu tiền tại nhà</span>',0,1),(61,64,'Hỗ trợ online top','',0,1),(62,65,'Đăng ký nhận email thông báo giảm giá','&nbsp;',0,1);
/*!40000 ALTER TABLE `tbl_modules_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name_buyer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_buyer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_buyer` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `location_buyer` text COLLATE utf8_unicode_ci NOT NULL,
  `carriage` decimal(10,0) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order_detail`
--

DROP TABLE IF EXISTS `tbl_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order_detail` (
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `count` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`order_id`,`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order_detail`
--

LOCK TABLES `tbl_order_detail` WRITE;
/*!40000 ALTER TABLE `tbl_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment`
--

LOCK TABLES `tbl_payment` WRITE;
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` VALUES (1,'Tiền mặt','Thanh toán trực tiếp khi giao hàng',1);
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_products` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `cata_id` int(11) NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cur_price` int(11) NOT NULL,
  `old_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `joindate` datetime NOT NULL,
  `creator` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `static` int(11) NOT NULL,
  `iscan` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `isedit` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (1,128,'',0,0,100,'2013-04-13 00:00:00','admin',0,179,1,100,1,1),(2,142,'',0,0,10,'2013-04-13 00:00:00','admin',0,141,1,100,1,1),(4,128,'',0,0,12,'2013-04-14 00:00:00','admin',0,180,1,100,1,1),(20,142,'',0,0,2,'1970-01-01 00:00:00','admin',0,168,0,100,1,1),(31,142,'',0,0,2,'1970-01-01 00:00:00','admin',0,232,0,100,1,1),(32,142,'',0,0,1,'1970-01-01 00:00:00','admin',0,297,0,100,1,1),(33,131,'',0,0,100,'2013-04-14 00:00:00','admin',0,151,1,100,1,1),(34,142,'',0,0,2,'1970-01-01 00:00:00','admin',0,121,0,100,1,1),(36,132,'',0,0,1,'1970-01-01 00:00:00','admin',0,142,0,100,1,1),(37,131,'',0,0,2,'1970-01-01 00:00:00','admin',0,144,0,100,1,1),(38,132,'',0,0,1,'1970-01-01 00:00:00','admin',0,127,0,100,1,1),(39,132,'',0,0,3,'2013-04-14 00:00:00','admin',0,122,1,100,1,1),(40,130,'',0,0,3,'2013-04-14 00:00:00','admin',0,148,1,100,1,1),(41,142,'',0,0,3,'2013-04-14 00:00:00','admin',0,144,1,100,1,1),(42,128,'',0,0,3,'2013-04-14 00:00:00','admin',0,160,1,100,1,1),(43,139,'',0,0,3,'2013-04-14 00:00:00','admin',0,138,1,100,1,1),(44,0,'',0,0,0,'0000-00-00 00:00:00','',0,157,0,0,1,1);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_text`
--

DROP TABLE IF EXISTS `tbl_products_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_products_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `unit` text COLLATE utf8_unicode_ci NOT NULL,
  `lag_id` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_text`
--

LOCK TABLES `tbl_products_text` WRITE;
/*!40000 ALTER TABLE `tbl_products_text` DISABLE KEYS */;
INSERT INTO `tbl_products_text` VALUES (1,1,'Án gian 1','<br>','<br>','',0,0),(2,2,'Tượng Trần Triều','<br>','<br>','',0,0),(4,4,'Án Gian 2','<br>','<br>','',0,0),(20,20,'Tượng Hoàng 10, Hoàng Bơ','<br>','<br>','',0,0),(31,31,'Tượng Hoàng 7','<br>','<br>','',0,0),(32,32,'Tượng Tam Toà Thánh Mẫu','','','',0,0),(33,33,'Lựu chơi chữ','<br>','<br>','',0,0),(34,34,'Tượng Địa Tạng','','','',0,0),(36,36,'Hoành Phi,Câu Đối 1','','','',0,0),(37,37,'Cuốn Thư 1','','','',0,0),(38,38,'Hoành Phi 3','','','',0,0),(39,39,'Hoành Phi,Câu Đối 2','<br>','<br>','',0,0),(40,40,'Cửa Võng Cửu Long','<br>','<br>','',0,0),(41,41,'Tượng Chúa Sơn Trang','<br>','<br>','',0,0),(42,42,'Án Gian 3','<br>','<br>','',0,0),(43,43,'Khám Mẫu','<br>','<br>','',0,0),(44,44,'Tên sản phẩm mới','','','',0,0);
/*!40000 ALTER TABLE `tbl_products_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_property`
--

DROP TABLE IF EXISTS `tbl_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_property`
--

LOCK TABLES `tbl_property` WRITE;
/*!40000 ALTER TABLE `tbl_property` DISABLE KEYS */;
INSERT INTO `tbl_property` VALUES (1,'Model','KG-262',24,0,1),(2,'Màu','vàng nhạt',24,0,1),(3,'Điện áp','220V/50Hz',24,0,1),(4,'Công suất','12W',24,0,1),(5,'Trọng lượng','2.3Kg',24,0,1),(6,'Kích thước','29 x 29 x 38.5cm ',24,0,1),(7,'Model','KG-261',25,0,1),(8,'Màu','ghi xám',25,0,1),(9,'Điện áp','220V/50Hz',25,0,1),(10,'Công suất','15W',25,0,1),(11,'Trọng lượng','2.3Kg',25,0,1),(12,'Kích thước','29 x 29 x 38.5cm ',25,0,1),(13,'Chiều dài',' ',33,0,1),(14,'Chiều rộng',' ',33,0,1),(15,'Vị trí','Phía trên ban thờ',33,0,1),(16,'Bảo hành ','Bảo hành tại nhà',33,0,1),(17,'Giao hàng và lắp đặp','Nhanh chóng và miễn phí',33,0,1),(18,'Hãng sản xuất','Kangaroo',63,0,1),(19,'Modem','KG 76',63,0,1),(20,'Công suất','2030 W',63,0,1),(21,'Điện áp','220v/ 50Hz',63,0,1),(22,'Áp suất hơi nước',' 1.5 Bar',63,0,1),(23,'Công suất hơi nước ','45g/1 phút',63,0,1),(24,'Dung tích bình nước',' 2.2L',63,0,1),(25,'Sản phẩm','được bảo hành 1 năm.\r\nĐược phân phối bởi Sieuthitienich.vn',63,0,1),(26,'Hãng sản xuất','Kangaroo',36,0,1),(27,'Model','KG 78',36,0,1),(28,'Công suất','1580W',36,0,1),(29,'Điện áp','220v/ 50Hz',36,0,1),(30,'Áp suất hơi nước','3.0Bar',36,0,1);
/*!40000 ALTER TABLE `tbl_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sales`
--

DROP TABLE IF EXISTS `tbl_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sales` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `intro` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8_unicode_ci NOT NULL,
  `joindate` datetime NOT NULL,
  `datetime` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_remain` int(11) NOT NULL,
  `cur_price` int(11) NOT NULL,
  `old_price` int(11) NOT NULL,
  `sales_price` int(11) NOT NULL,
  `creator` text COLLATE utf8_unicode_ci NOT NULL,
  `amount_buy` int(11) NOT NULL,
  `unit` text COLLATE utf8_unicode_ci NOT NULL,
  `isactive` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sales`
--

LOCK TABLES `tbl_sales` WRITE;
/*!40000 ALTER TABLE `tbl_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_singers`
--

DROP TABLE IF EXISTS `tbl_singers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_singers` (
  `sing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`sing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_singers`
--

LOCK TABLES `tbl_singers` WRITE;
/*!40000 ALTER TABLE `tbl_singers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_singers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_template`
--

DROP TABLE IF EXISTS `tbl_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_template` (
  `tem_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author_site` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `isactive` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_template`
--

LOCK TABLES `tbl_template` WRITE;
/*!40000 ALTER TABLE `tbl_template` DISABLE KEYS */;
INSERT INTO `tbl_template` VALUES (2,'default','Template mặt định của admin','GFCMS TEAM','contact@gmail.com','glowfuture.com','admin',1,1),(3,'igf-design','Template IGF-Design','IGF TEAM','anh.trung281@gmail.com','igf.com.vn','site',0,0),(4,'igf','','IGF','anh.trung@gmail.com','igf.com.vn','site',1,1);
/*!40000 ALTER TABLE `tbl_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_video` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `singer_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `lyric` text COLLATE utf8_unicode_ci,
  `file_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isactive` int(11) DEFAULT '1',
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_video`
--

LOCK TABLES `tbl_video` WRITE;
/*!40000 ALTER TABLE `tbl_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_catalogs`
--

DROP TABLE IF EXISTS `view_catalogs`;
/*!50001 DROP VIEW IF EXISTS `view_catalogs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_catalogs` (
  `cata_id` tinyint NOT NULL,
  `par_id` tinyint NOT NULL,
  `order` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `intro` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_cate`
--

DROP TABLE IF EXISTS `view_cate`;
/*!50001 DROP VIEW IF EXISTS `view_cate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_cate` (
  `cat_id` tinyint NOT NULL,
  `par_id` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `desc` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_category`
--

DROP TABLE IF EXISTS `view_category`;
/*!50001 DROP VIEW IF EXISTS `view_category`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_category` (
  `id` tinyint NOT NULL,
  `cat_id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `desc` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `par_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_comments`
--

DROP TABLE IF EXISTS `view_comments`;
/*!50001 DROP VIEW IF EXISTS `view_comments`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_comments` (
  `comm_id` tinyint NOT NULL,
  `par_id` tinyint NOT NULL,
  `con_id` tinyint NOT NULL,
  `pro_id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `joindate` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `content` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_content`
--

DROP TABLE IF EXISTS `view_content`;
/*!50001 DROP VIEW IF EXISTS `view_content`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_content` (
  `con_id` tinyint NOT NULL,
  `code` tinyint NOT NULL,
  `cat_id` tinyint NOT NULL,
  `creatdate` tinyint NOT NULL,
  `modifydate` tinyint NOT NULL,
  `gmem_id` tinyint NOT NULL,
  `metakey` tinyint NOT NULL,
  `metadesc` tinyint NOT NULL,
  `visited` tinyint NOT NULL,
  `order` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `intro` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `fulltext` tinyint NOT NULL,
  `author` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_menu`
--

DROP TABLE IF EXISTS `view_menu`;
/*!50001 DROP VIEW IF EXISTS `view_menu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_menu` (
  `mnu_id` tinyint NOT NULL,
  `code` tinyint NOT NULL,
  `desc` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_mnuitem`
--

DROP TABLE IF EXISTS `view_mnuitem`;
/*!50001 DROP VIEW IF EXISTS `view_mnuitem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_mnuitem` (
  `mnuitem_id` tinyint NOT NULL,
  `par_id` tinyint NOT NULL,
  `code` tinyint NOT NULL,
  `desc` tinyint NOT NULL,
  `mnu_id` tinyint NOT NULL,
  `viewtype` tinyint NOT NULL,
  `cat_id` tinyint NOT NULL,
  `con_id` tinyint NOT NULL,
  `link` tinyint NOT NULL,
  `class` tinyint NOT NULL,
  `order` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_module`
--

DROP TABLE IF EXISTS `view_module`;
/*!50001 DROP VIEW IF EXISTS `view_module`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_module` (
  `mod_id` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `viewtitle` tinyint NOT NULL,
  `mnu_id` tinyint NOT NULL,
  `cat_id` tinyint NOT NULL,
  `theme` tinyint NOT NULL,
  `position` tinyint NOT NULL,
  `mnuids` tinyint NOT NULL,
  `class` tinyint NOT NULL,
  `order` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `content` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_products`
--

DROP TABLE IF EXISTS `view_products`;
/*!50001 DROP VIEW IF EXISTS `view_products`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_products` (
  `pro_id` tinyint NOT NULL,
  `cata_id` tinyint NOT NULL,
  `iscan` tinyint NOT NULL,
  `order` tinyint NOT NULL,
  `static` tinyint NOT NULL,
  `cur_price` tinyint NOT NULL,
  `old_price` tinyint NOT NULL,
  `sale` tinyint NOT NULL,
  `quantity` tinyint NOT NULL,
  `joindate` tinyint NOT NULL,
  `creator` tinyint NOT NULL,
  `video` tinyint NOT NULL,
  `isactive` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `intro` tinyint NOT NULL,
  `fulltext` tinyint NOT NULL,
  `unit` tinyint NOT NULL,
  `lag_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_catalogs`
--

/*!50001 DROP TABLE IF EXISTS `view_catalogs`*/;
/*!50001 DROP VIEW IF EXISTS `view_catalogs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_catalogs` AS (select `tbl_catalogs`.`cata_id` AS `cata_id`,`tbl_catalogs`.`par_id` AS `par_id`,`tbl_catalogs`.`order` AS `order`,`tbl_catalogs`.`isactive` AS `isactive`,`tbl_catalogs_text`.`name` AS `name`,`tbl_catalogs_text`.`intro` AS `intro`,`tbl_catalogs_text`.`lag_id` AS `lag_id` from (`tbl_catalogs_text` join `tbl_catalogs` on((`tbl_catalogs_text`.`cata_id` = `tbl_catalogs`.`cata_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_cate`
--

/*!50001 DROP TABLE IF EXISTS `view_cate`*/;
/*!50001 DROP VIEW IF EXISTS `view_cate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cate` AS (select `tbl_category`.`cat_id` AS `cat_id`,`tbl_category`.`par_id` AS `par_id`,`tbl_category`.`isactive` AS `isactive`,`tbl_category_text`.`name` AS `name`,`tbl_category_text`.`desc` AS `desc`,`tbl_category_text`.`lag_id` AS `lag_id` from (`tbl_category_text` join `tbl_category` on((`tbl_category_text`.`cat_id` = `tbl_category`.`cat_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_category`
--

/*!50001 DROP TABLE IF EXISTS `view_category`*/;
/*!50001 DROP VIEW IF EXISTS `view_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_category` AS (select `tbl_category_text`.`id` AS `id`,`tbl_category_text`.`cat_id` AS `cat_id`,`tbl_category_text`.`name` AS `name`,`tbl_category_text`.`desc` AS `desc`,`tbl_category_text`.`lag_id` AS `lag_id`,`tbl_category_text`.`isactive` AS `isactive`,`tbl_category`.`par_id` AS `par_id` from (`tbl_category` join `tbl_category_text` on((`tbl_category`.`cat_id` = `tbl_category_text`.`cat_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_comments`
--

/*!50001 DROP TABLE IF EXISTS `view_comments`*/;
/*!50001 DROP VIEW IF EXISTS `view_comments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_comments` AS (select `tbl_comment`.`comm_id` AS `comm_id`,`tbl_comment`.`par_id` AS `par_id`,`tbl_comment`.`con_id` AS `con_id`,`tbl_comment`.`pro_id` AS `pro_id`,`tbl_comment`.`username` AS `username`,`tbl_comment`.`joindate` AS `joindate`,`tbl_comment`.`isactive` AS `isactive`,`tbl_comment_text`.`content` AS `content`,`tbl_comment_text`.`lag_id` AS `lag_id` from (`tbl_comment_text` join `tbl_comment` on((`tbl_comment_text`.`comm_id` = `tbl_comment`.`comm_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_content`
--

/*!50001 DROP TABLE IF EXISTS `view_content`*/;
/*!50001 DROP VIEW IF EXISTS `view_content`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_content` AS (select `tbl_content`.`con_id` AS `con_id`,`tbl_content`.`code` AS `code`,`tbl_content`.`cat_id` AS `cat_id`,`tbl_content`.`creatdate` AS `creatdate`,`tbl_content`.`modifydate` AS `modifydate`,`tbl_content`.`gmem_id` AS `gmem_id`,`tbl_content`.`metakey` AS `metakey`,`tbl_content`.`metadesc` AS `metadesc`,`tbl_content`.`visited` AS `visited`,`tbl_content`.`order` AS `order`,`tbl_content`.`isactive` AS `isactive`,`tbl_content_text`.`intro` AS `intro`,`tbl_content_text`.`title` AS `title`,`tbl_content_text`.`fulltext` AS `fulltext`,`tbl_content_text`.`author` AS `author`,`tbl_content_text`.`lag_id` AS `lag_id` from (`tbl_content` join `tbl_content_text` on((`tbl_content`.`con_id` = `tbl_content_text`.`con_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_menu`
--

/*!50001 DROP TABLE IF EXISTS `view_menu`*/;
/*!50001 DROP VIEW IF EXISTS `view_menu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_menu` AS (select `tbl_menus`.`mnu_id` AS `mnu_id`,`tbl_menus`.`code` AS `code`,`tbl_menus`.`desc` AS `desc`,`tbl_menus`.`isactive` AS `isactive`,`tbl_menus_text`.`name` AS `name`,`tbl_menus_text`.`lag_id` AS `lag_id` from (`tbl_menus` join `tbl_menus_text` on((`tbl_menus`.`mnu_id` = `tbl_menus_text`.`mnu_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_mnuitem`
--

/*!50001 DROP TABLE IF EXISTS `view_mnuitem`*/;
/*!50001 DROP VIEW IF EXISTS `view_mnuitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_mnuitem` AS (select `tbl_mnuitem`.`mnuitem_id` AS `mnuitem_id`,`tbl_mnuitem`.`par_id` AS `par_id`,`tbl_mnuitem`.`code` AS `code`,`tbl_mnuitem`.`desc` AS `desc`,`tbl_mnuitem`.`mnu_id` AS `mnu_id`,`tbl_mnuitem`.`viewtype` AS `viewtype`,`tbl_mnuitem`.`cat_id` AS `cat_id`,`tbl_mnuitem`.`con_id` AS `con_id`,`tbl_mnuitem`.`link` AS `link`,`tbl_mnuitem`.`class` AS `class`,`tbl_mnuitem`.`order` AS `order`,`tbl_mnuitem`.`isactive` AS `isactive`,`tbl_mnuitem_text`.`name` AS `name`,`tbl_mnuitem_text`.`lag_id` AS `lag_id` from (`tbl_mnuitem` join `tbl_mnuitem_text` on((`tbl_mnuitem`.`mnuitem_id` = `tbl_mnuitem_text`.`mnuitem_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_module`
--

/*!50001 DROP TABLE IF EXISTS `view_module`*/;
/*!50001 DROP VIEW IF EXISTS `view_module`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_module` AS (select `tbl_modules`.`mod_id` AS `mod_id`,`tbl_modules`.`type` AS `type`,`tbl_modules`.`viewtitle` AS `viewtitle`,`tbl_modules`.`mnu_id` AS `mnu_id`,`tbl_modules`.`cat_id` AS `cat_id`,`tbl_modules`.`theme` AS `theme`,`tbl_modules`.`position` AS `position`,`tbl_modules`.`mnuids` AS `mnuids`,`tbl_modules`.`class` AS `class`,`tbl_modules`.`order` AS `order`,`tbl_modules`.`isactive` AS `isactive`,`tbl_modules_text`.`title` AS `title`,`tbl_modules_text`.`content` AS `content`,`tbl_modules_text`.`lag_id` AS `lag_id` from (`tbl_modules_text` join `tbl_modules` on((`tbl_modules_text`.`mod_id` = `tbl_modules`.`mod_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_products`
--

/*!50001 DROP TABLE IF EXISTS `view_products`*/;
/*!50001 DROP VIEW IF EXISTS `view_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_products` AS (select `tbl_products`.`pro_id` AS `pro_id`,`tbl_products`.`cata_id` AS `cata_id`,`tbl_products`.`iscan` AS `iscan`,`tbl_products`.`order` AS `order`,`tbl_products`.`static` AS `static`,`tbl_products`.`cur_price` AS `cur_price`,`tbl_products`.`old_price` AS `old_price`,`tbl_products`.`sale` AS `sale`,`tbl_products`.`quantity` AS `quantity`,`tbl_products`.`joindate` AS `joindate`,`tbl_products`.`creator` AS `creator`,`tbl_products`.`video` AS `video`,`tbl_products`.`isactive` AS `isactive`,`tbl_products_text`.`name` AS `name`,`tbl_products_text`.`intro` AS `intro`,`tbl_products_text`.`fulltext` AS `fulltext`,`tbl_products_text`.`unit` AS `unit`,`tbl_products_text`.`lag_id` AS `lag_id` from (`tbl_products_text` join `tbl_products` on((`tbl_products_text`.`pro_id` = `tbl_products`.`pro_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-22 23:05:46
