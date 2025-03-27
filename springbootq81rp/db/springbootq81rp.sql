-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootq81rp
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootq81rp`
--

/*!40000 DROP DATABASE IF EXISTS `springbootq81rp`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootq81rp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootq81rp`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-02-10 12:48:08','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2023-02-10 12:48:08',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2023-02-10 12:48:08',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2023-02-10 12:48:08',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2023-02-10 12:48:08',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2023-02-10 12:48:08',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2023-02-10 12:48:08',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2023-02-10 12:48:08',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2023-02-10 12:48:08',18,'宇宙银河系地球1号','地某','13823888888','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (111,'2023-02-10 12:48:07',1,1,'提问1','回复1',1),(112,'2023-02-10 12:48:07',2,2,'提问2','回复2',2),(113,'2023-02-10 12:48:07',3,3,'提问3','回复3',3),(114,'2023-02-10 12:48:07',4,4,'提问4','回复4',4),(115,'2023-02-10 12:48:07',5,5,'提问5','回复5',5),(116,'2023-02-10 12:48:07',6,6,'提问6','回复6',6),(117,'2023-02-10 12:48:07',7,7,'提问7','回复7',7),(118,'2023-02-10 12:48:07',8,8,'提问8','回复8',8);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chathelper`
--

DROP TABLE IF EXISTS `chathelper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chathelper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ask` varchar(200) DEFAULT NULL COMMENT '提问',
  `reply` longtext COMMENT '回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='聊天助手表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chathelper`
--

LOCK TABLES `chathelper` WRITE;
/*!40000 ALTER TABLE `chathelper` DISABLE KEYS */;
INSERT INTO `chathelper` VALUES (121,'2023-02-10 12:48:08','提问1','回复1'),(122,'2023-02-10 12:48:08','提问2','回复2'),(123,'2023-02-10 12:48:08','提问3','回复3'),(124,'2023-02-10 12:48:08','提问4','回复4'),(125,'2023-02-10 12:48:08','提问5','回复5'),(126,'2023-02-10 12:48:08','提问6','回复6'),(127,'2023-02-10 12:48:08','提问7','回复7'),(128,'2023-02-10 12:48:08','提问8','回复8');
/*!40000 ALTER TABLE `chathelper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinwenxinxi`
--

DROP TABLE IF EXISTS `discussxinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinwenxinxi`
--

LOCK TABLES `discussxinwenxinxi` WRITE;
/*!40000 ALTER TABLE `discussxinwenxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feiyongfenlei`
--

DROP TABLE IF EXISTS `feiyongfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feiyongfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `feiyongfenlei` varchar(200) NOT NULL COMMENT '费用分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='费用分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feiyongfenlei`
--

LOCK TABLES `feiyongfenlei` WRITE;
/*!40000 ALTER TABLE `feiyongfenlei` DISABLE KEYS */;
INSERT INTO `feiyongfenlei` VALUES (61,'2023-02-10 12:48:07','费用分类1'),(62,'2023-02-10 12:48:07','费用分类2'),(63,'2023-02-10 12:48:07','费用分类3'),(64,'2023-02-10 12:48:07','费用分类4'),(65,'2023-02-10 12:48:07','费用分类5'),(66,'2023-02-10 12:48:07','费用分类6'),(67,'2023-02-10 12:48:07','费用分类7'),(68,'2023-02-10 12:48:07','费用分类8');
/*!40000 ALTER TABLE `feiyongfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feiyongxinxi`
--

DROP TABLE IF EXISTS `feiyongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feiyongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `feiyongbianhao` varchar(200) DEFAULT NULL COMMENT '费用编号',
  `feiyongmingcheng` varchar(200) NOT NULL COMMENT '费用名称',
  `feiyongfenlei` varchar(200) NOT NULL COMMENT '费用分类',
  `feiyongjine` float DEFAULT NULL COMMENT '费用金额',
  `feiyongpingzheng` longtext COMMENT '费用凭证',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `feiyongneirong` longtext COMMENT '费用内容',
  `fasongriqi` date DEFAULT NULL COMMENT '发送日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `feiyongbianhao` (`feiyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='费用信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feiyongxinxi`
--

LOCK TABLES `feiyongxinxi` WRITE;
/*!40000 ALTER TABLE `feiyongxinxi` DISABLE KEYS */;
INSERT INTO `feiyongxinxi` VALUES (71,'2023-02-10 12:48:07','1111111111','费用名称1','费用分类1',1,'upload/feiyongxinxi_feiyongpingzheng1.jpg,upload/feiyongxinxi_feiyongpingzheng2.jpg,upload/feiyongxinxi_feiyongpingzheng3.jpg','账号1','姓名1','手机号码1','费用内容1','2023-02-10','未支付',1),(72,'2023-02-10 12:48:07','2222222222','费用名称2','费用分类2',2,'upload/feiyongxinxi_feiyongpingzheng2.jpg,upload/feiyongxinxi_feiyongpingzheng3.jpg,upload/feiyongxinxi_feiyongpingzheng4.jpg','账号2','姓名2','手机号码2','费用内容2','2023-02-10','未支付',2),(73,'2023-02-10 12:48:07','3333333333','费用名称3','费用分类3',3,'upload/feiyongxinxi_feiyongpingzheng3.jpg,upload/feiyongxinxi_feiyongpingzheng4.jpg,upload/feiyongxinxi_feiyongpingzheng5.jpg','账号3','姓名3','手机号码3','费用内容3','2023-02-10','未支付',3),(74,'2023-02-10 12:48:07','4444444444','费用名称4','费用分类4',4,'upload/feiyongxinxi_feiyongpingzheng4.jpg,upload/feiyongxinxi_feiyongpingzheng5.jpg,upload/feiyongxinxi_feiyongpingzheng6.jpg','账号4','姓名4','手机号码4','费用内容4','2023-02-10','未支付',4),(75,'2023-02-10 12:48:07','5555555555','费用名称5','费用分类5',5,'upload/feiyongxinxi_feiyongpingzheng5.jpg,upload/feiyongxinxi_feiyongpingzheng6.jpg,upload/feiyongxinxi_feiyongpingzheng7.jpg','账号5','姓名5','手机号码5','费用内容5','2023-02-10','未支付',5),(76,'2023-02-10 12:48:07','6666666666','费用名称6','费用分类6',6,'upload/feiyongxinxi_feiyongpingzheng6.jpg,upload/feiyongxinxi_feiyongpingzheng7.jpg,upload/feiyongxinxi_feiyongpingzheng8.jpg','账号6','姓名6','手机号码6','费用内容6','2023-02-10','未支付',6),(77,'2023-02-10 12:48:07','7777777777','费用名称7','费用分类7',7,'upload/feiyongxinxi_feiyongpingzheng7.jpg,upload/feiyongxinxi_feiyongpingzheng8.jpg,upload/feiyongxinxi_feiyongpingzheng9.jpg','账号7','姓名7','手机号码7','费用内容7','2023-02-10','未支付',7),(78,'2023-02-10 12:48:07','8888888888','费用名称8','费用分类8',8,'upload/feiyongxinxi_feiyongpingzheng8.jpg,upload/feiyongxinxi_feiyongpingzheng9.jpg,upload/feiyongxinxi_feiyongpingzheng10.jpg','账号8','姓名8','手机号码8','费用内容8','2023-02-10','未支付',8);
/*!40000 ALTER TABLE `feiyongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (131,'2023-02-10 12:48:08','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(132,'2023-02-10 12:48:08','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(133,'2023-02-10 12:48:08','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(134,'2023-02-10 12:48:08','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(135,'2023-02-10 12:48:08','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(136,'2023-02-10 12:48:08','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(137,'2023-02-10 12:48:08','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(138,'2023-02-10 12:48:08','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guahaoxinxi`
--

DROP TABLE IF EXISTS `guahaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guahaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xiangpian` longtext COMMENT '相片',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `jiuzhenshijian` varchar(200) DEFAULT NULL COMMENT '就诊时间',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='挂号信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guahaoxinxi`
--

LOCK TABLES `guahaoxinxi` WRITE;
/*!40000 ALTER TABLE `guahaoxinxi` DISABLE KEYS */;
INSERT INTO `guahaoxinxi` VALUES (81,'2023-02-10 12:48:07','1111111111','医院名称1','医生姓名1','性别1','upload/guahaoxinxi_xiangpian1.jpg,upload/guahaoxinxi_xiangpian2.jpg,upload/guahaoxinxi_xiangpian3.jpg','职位1','挂号费1','科室名称1','就诊时间1','2023-02-10 20:48:07','备注1','账号1','姓名1','手机号码1','是','','未支付',1),(82,'2023-02-10 12:48:07','2222222222','医院名称2','医生姓名2','性别2','upload/guahaoxinxi_xiangpian2.jpg,upload/guahaoxinxi_xiangpian3.jpg,upload/guahaoxinxi_xiangpian4.jpg','职位2','挂号费2','科室名称2','就诊时间2','2023-02-10 20:48:07','备注2','账号2','姓名2','手机号码2','是','','未支付',2),(83,'2023-02-10 12:48:07','3333333333','医院名称3','医生姓名3','性别3','upload/guahaoxinxi_xiangpian3.jpg,upload/guahaoxinxi_xiangpian4.jpg,upload/guahaoxinxi_xiangpian5.jpg','职位3','挂号费3','科室名称3','就诊时间3','2023-02-10 20:48:07','备注3','账号3','姓名3','手机号码3','是','','未支付',3),(84,'2023-02-10 12:48:07','4444444444','医院名称4','医生姓名4','性别4','upload/guahaoxinxi_xiangpian4.jpg,upload/guahaoxinxi_xiangpian5.jpg,upload/guahaoxinxi_xiangpian6.jpg','职位4','挂号费4','科室名称4','就诊时间4','2023-02-10 20:48:07','备注4','账号4','姓名4','手机号码4','是','','未支付',4),(85,'2023-02-10 12:48:07','5555555555','医院名称5','医生姓名5','性别5','upload/guahaoxinxi_xiangpian5.jpg,upload/guahaoxinxi_xiangpian6.jpg,upload/guahaoxinxi_xiangpian7.jpg','职位5','挂号费5','科室名称5','就诊时间5','2023-02-10 20:48:07','备注5','账号5','姓名5','手机号码5','是','','未支付',5),(86,'2023-02-10 12:48:07','6666666666','医院名称6','医生姓名6','性别6','upload/guahaoxinxi_xiangpian6.jpg,upload/guahaoxinxi_xiangpian7.jpg,upload/guahaoxinxi_xiangpian8.jpg','职位6','挂号费6','科室名称6','就诊时间6','2023-02-10 20:48:07','备注6','账号6','姓名6','手机号码6','是','','未支付',6),(87,'2023-02-10 12:48:07','7777777777','医院名称7','医生姓名7','性别7','upload/guahaoxinxi_xiangpian7.jpg,upload/guahaoxinxi_xiangpian8.jpg,upload/guahaoxinxi_xiangpian9.jpg','职位7','挂号费7','科室名称7','就诊时间7','2023-02-10 20:48:07','备注7','账号7','姓名7','手机号码7','是','','未支付',7),(88,'2023-02-10 12:48:07','8888888888','医院名称8','医生姓名8','性别8','upload/guahaoxinxi_xiangpian8.jpg,upload/guahaoxinxi_xiangpian9.jpg,upload/guahaoxinxi_xiangpian10.jpg','职位8','挂号费8','科室名称8','就诊时间8','2023-02-10 20:48:07','备注8','账号8','姓名8','手机号码8','是','','未支付',8);
/*!40000 ALTER TABLE `guahaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuzhenxinxi`
--

DROP TABLE IF EXISTS `jiuzhenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) NOT NULL COMMENT '医院地址',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xiangpian` longtext COMMENT '相片',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `keshimingcheng` varchar(200) NOT NULL COMMENT '科室名称',
  `jiuzhenshijian` varchar(200) DEFAULT NULL COMMENT '就诊时间',
  `yishengjianjie` longtext COMMENT '医生简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='就诊信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuzhenxinxi`
--

LOCK TABLES `jiuzhenxinxi` WRITE;
/*!40000 ALTER TABLE `jiuzhenxinxi` DISABLE KEYS */;
INSERT INTO `jiuzhenxinxi` VALUES (31,'2023-02-10 12:48:07','医院名称1','医院地址1','医生姓名1','男','upload/jiuzhenxinxi_xiangpian1.jpg,upload/jiuzhenxinxi_xiangpian2.jpg,upload/jiuzhenxinxi_xiangpian3.jpg','主治医生','挂号费1','科室名称1','就诊时间1','医生简介1'),(32,'2023-02-10 12:48:07','医院名称2','医院地址2','医生姓名2','男','upload/jiuzhenxinxi_xiangpian2.jpg,upload/jiuzhenxinxi_xiangpian3.jpg,upload/jiuzhenxinxi_xiangpian4.jpg','主治医生','挂号费2','科室名称2','就诊时间2','医生简介2'),(33,'2023-02-10 12:48:07','医院名称3','医院地址3','医生姓名3','男','upload/jiuzhenxinxi_xiangpian3.jpg,upload/jiuzhenxinxi_xiangpian4.jpg,upload/jiuzhenxinxi_xiangpian5.jpg','主治医生','挂号费3','科室名称3','就诊时间3','医生简介3'),(34,'2023-02-10 12:48:07','医院名称4','医院地址4','医生姓名4','男','upload/jiuzhenxinxi_xiangpian4.jpg,upload/jiuzhenxinxi_xiangpian5.jpg,upload/jiuzhenxinxi_xiangpian6.jpg','主治医生','挂号费4','科室名称4','就诊时间4','医生简介4'),(35,'2023-02-10 12:48:07','医院名称5','医院地址5','医生姓名5','男','upload/jiuzhenxinxi_xiangpian5.jpg,upload/jiuzhenxinxi_xiangpian6.jpg,upload/jiuzhenxinxi_xiangpian7.jpg','主治医生','挂号费5','科室名称5','就诊时间5','医生简介5'),(36,'2023-02-10 12:48:07','医院名称6','医院地址6','医生姓名6','男','upload/jiuzhenxinxi_xiangpian6.jpg,upload/jiuzhenxinxi_xiangpian7.jpg,upload/jiuzhenxinxi_xiangpian8.jpg','主治医生','挂号费6','科室名称6','就诊时间6','医生简介6'),(37,'2023-02-10 12:48:07','医院名称7','医院地址7','医生姓名7','男','upload/jiuzhenxinxi_xiangpian7.jpg,upload/jiuzhenxinxi_xiangpian8.jpg,upload/jiuzhenxinxi_xiangpian9.jpg','主治医生','挂号费7','科室名称7','就诊时间7','医生简介7'),(38,'2023-02-10 12:48:07','医院名称8','医院地址8','医生姓名8','男','upload/jiuzhenxinxi_xiangpian8.jpg,upload/jiuzhenxinxi_xiangpian9.jpg,upload/jiuzhenxinxi_xiangpian10.jpg','主治医生','挂号费8','科室名称8','就诊时间8','医生简介8');
/*!40000 ALTER TABLE `jiuzhenxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jumin`
--

DROP TABLE IF EXISTS `jumin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jumin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` longtext COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='居民';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jumin`
--

LOCK TABLES `jumin` WRITE;
/*!40000 ALTER TABLE `jumin` DISABLE KEYS */;
INSERT INTO `jumin` VALUES (11,'2023-02-10 12:48:07','账号1','123456','姓名1','男','773890001@qq.com','440300199101010001','13823888881','upload/jumin_touxiang1.jpg',200),(12,'2023-02-10 12:48:07','账号2','123456','姓名2','男','773890002@qq.com','440300199202020002','13823888882','upload/jumin_touxiang2.jpg',200),(13,'2023-02-10 12:48:07','账号3','123456','姓名3','男','773890003@qq.com','440300199303030003','13823888883','upload/jumin_touxiang3.jpg',200),(14,'2023-02-10 12:48:07','账号4','123456','姓名4','男','773890004@qq.com','440300199404040004','13823888884','upload/jumin_touxiang4.jpg',200),(15,'2023-02-10 12:48:07','账号5','123456','姓名5','男','773890005@qq.com','440300199505050005','13823888885','upload/jumin_touxiang5.jpg',200),(16,'2023-02-10 12:48:07','账号6','123456','姓名6','男','773890006@qq.com','440300199606060006','13823888886','upload/jumin_touxiang6.jpg',200),(17,'2023-02-10 12:48:07','账号7','123456','姓名7','男','773890007@qq.com','440300199707070007','13823888887','upload/jumin_touxiang7.jpg',200),(18,'2023-02-10 12:48:07','账号8','123456','姓名8','男','773890008@qq.com','440300199808080008','13823888888','upload/jumin_touxiang8.jpg',200);
/*!40000 ALTER TABLE `jumin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshimingcheng`
--

DROP TABLE IF EXISTS `keshimingcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshimingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) NOT NULL COMMENT '科室名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='科室名称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshimingcheng`
--

LOCK TABLES `keshimingcheng` WRITE;
/*!40000 ALTER TABLE `keshimingcheng` DISABLE KEYS */;
INSERT INTO `keshimingcheng` VALUES (21,'2023-02-10 12:48:07','科室名称1'),(22,'2023-02-10 12:48:07','科室名称2'),(23,'2023-02-10 12:48:07','科室名称3'),(24,'2023-02-10 12:48:07','科室名称4'),(25,'2023-02-10 12:48:07','科室名称5'),(26,'2023-02-10 12:48:07','科室名称6'),(27,'2023-02-10 12:48:07','科室名称7'),(28,'2023-02-10 12:48:07','科室名称8');
/*!40000 ALTER TABLE `keshimingcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (181,'2023-02-10 12:48:08','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(182,'2023-02-10 12:48:08','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(183,'2023-02-10 12:48:08','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(184,'2023-02-10 12:48:08','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(185,'2023-02-10 12:48:08','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(186,'2023-02-10 12:48:08','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(187,'2023-02-10 12:48:08','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(188,'2023-02-10 12:48:08','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinleixing`
--

DROP TABLE IF EXISTS `shangpinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='商品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinleixing`
--

LOCK TABLES `shangpinleixing` WRITE;
/*!40000 ALTER TABLE `shangpinleixing` DISABLE KEYS */;
INSERT INTO `shangpinleixing` VALUES (91,'2023-02-10 12:48:07','商品类型1'),(92,'2023-02-10 12:48:07','商品类型2'),(93,'2023-02-10 12:48:07','商品类型3'),(94,'2023-02-10 12:48:07','商品类型4'),(95,'2023-02-10 12:48:07','商品类型5'),(96,'2023-02-10 12:48:07','商品类型6'),(97,'2023-02-10 12:48:07','商品类型7'),(98,'2023-02-10 12:48:07','商品类型8');
/*!40000 ALTER TABLE `shangpinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) NOT NULL COMMENT '商品类型',
  `shangpintupian` longtext COMMENT '商品图片',
  `shangpinguige` varchar(200) DEFAULT NULL COMMENT '商品规格',
  `shangpinjianjie` longtext COMMENT '商品简介',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shengchandi` varchar(200) NOT NULL COMMENT '生产地',
  `pinpai` varchar(200) NOT NULL COMMENT '品牌',
  `yuancailiao` varchar(200) DEFAULT NULL COMMENT '原材料',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (101,'2023-02-10 12:48:07','商品名称1','商品类型1','upload/shangpinxinxi_shangpintupian1.jpg,upload/shangpinxinxi_shangpintupian2.jpg,upload/shangpinxinxi_shangpintupian3.jpg','商品规格1','商品简介1','商品详情1','生产地1','品牌1','原材料1','2023-02-10',99.9),(102,'2023-02-10 12:48:07','商品名称2','商品类型2','upload/shangpinxinxi_shangpintupian2.jpg,upload/shangpinxinxi_shangpintupian3.jpg,upload/shangpinxinxi_shangpintupian4.jpg','商品规格2','商品简介2','商品详情2','生产地2','品牌2','原材料2','2023-02-10',99.9),(103,'2023-02-10 12:48:07','商品名称3','商品类型3','upload/shangpinxinxi_shangpintupian3.jpg,upload/shangpinxinxi_shangpintupian4.jpg,upload/shangpinxinxi_shangpintupian5.jpg','商品规格3','商品简介3','商品详情3','生产地3','品牌3','原材料3','2023-02-10',99.9),(104,'2023-02-10 12:48:07','商品名称4','商品类型4','upload/shangpinxinxi_shangpintupian4.jpg,upload/shangpinxinxi_shangpintupian5.jpg,upload/shangpinxinxi_shangpintupian6.jpg','商品规格4','商品简介4','商品详情4','生产地4','品牌4','原材料4','2023-02-10',99.9),(105,'2023-02-10 12:48:07','商品名称5','商品类型5','upload/shangpinxinxi_shangpintupian5.jpg,upload/shangpinxinxi_shangpintupian6.jpg,upload/shangpinxinxi_shangpintupian7.jpg','商品规格5','商品简介5','商品详情5','生产地5','品牌5','原材料5','2023-02-10',99.9),(106,'2023-02-10 12:48:07','商品名称6','商品类型6','upload/shangpinxinxi_shangpintupian6.jpg,upload/shangpinxinxi_shangpintupian7.jpg,upload/shangpinxinxi_shangpintupian8.jpg','商品规格6','商品简介6','商品详情6','生产地6','品牌6','原材料6','2023-02-10',99.9),(107,'2023-02-10 12:48:07','商品名称7','商品类型7','upload/shangpinxinxi_shangpintupian7.jpg,upload/shangpinxinxi_shangpintupian8.jpg,upload/shangpinxinxi_shangpintupian9.jpg','商品规格7','商品简介7','商品详情7','生产地7','品牌7','原材料7','2023-02-10',99.9),(108,'2023-02-10 12:48:07','商品名称8','商品类型8','upload/shangpinxinxi_shangpintupian8.jpg,upload/shangpinxinxi_shangpintupian9.jpg,upload/shangpinxinxi_shangpintupian10.jpg','商品规格8','商品简介8','商品详情8','生产地8','品牌8','原材料8','2023-02-10',99.9);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-02-10 12:48:08','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,12,'账号2','jumin','居民','mwehk634u13x69z0tlmgh7cgy0pznl2s','2023-02-10 12:58:00','2023-02-10 13:58:00'),(2,1,'admin','users','管理员','xm2axvc1p63rxbdib6rmdqiv44r7lfvq','2023-02-10 12:59:23','2023-02-10 13:59:23');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-10 12:48:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenfenlei`
--

DROP TABLE IF EXISTS `xinwenfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='新闻分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenfenlei`
--

LOCK TABLES `xinwenfenlei` WRITE;
/*!40000 ALTER TABLE `xinwenfenlei` DISABLE KEYS */;
INSERT INTO `xinwenfenlei` VALUES (41,'2023-02-10 12:48:07','新闻分类1'),(42,'2023-02-10 12:48:07','新闻分类2'),(43,'2023-02-10 12:48:07','新闻分类3'),(44,'2023-02-10 12:48:07','新闻分类4'),(45,'2023-02-10 12:48:07','新闻分类5'),(46,'2023-02-10 12:48:07','新闻分类6'),(47,'2023-02-10 12:48:07','新闻分类7'),(48,'2023-02-10 12:48:07','新闻分类8');
/*!40000 ALTER TABLE `xinwenfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinwenxinxi`
--

DROP TABLE IF EXISTS `xinwenxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinwenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` longtext COMMENT '封面',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  `zhubian` varchar(200) NOT NULL COMMENT '主编',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='新闻信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinwenxinxi`
--

LOCK TABLES `xinwenxinxi` WRITE;
/*!40000 ALTER TABLE `xinwenxinxi` DISABLE KEYS */;
INSERT INTO `xinwenxinxi` VALUES (51,'2023-02-10 12:48:07','标题1','upload/xinwenxinxi_fengmian1.jpg,upload/xinwenxinxi_fengmian2.jpg,upload/xinwenxinxi_fengmian3.jpg','新闻分类1','主编1','简介1','详情1','2023-02-10'),(52,'2023-02-10 12:48:07','标题2','upload/xinwenxinxi_fengmian2.jpg,upload/xinwenxinxi_fengmian3.jpg,upload/xinwenxinxi_fengmian4.jpg','新闻分类2','主编2','简介2','详情2','2023-02-10'),(53,'2023-02-10 12:48:07','标题3','upload/xinwenxinxi_fengmian3.jpg,upload/xinwenxinxi_fengmian4.jpg,upload/xinwenxinxi_fengmian5.jpg','新闻分类3','主编3','简介3','详情3','2023-02-10'),(54,'2023-02-10 12:48:07','标题4','upload/xinwenxinxi_fengmian4.jpg,upload/xinwenxinxi_fengmian5.jpg,upload/xinwenxinxi_fengmian6.jpg','新闻分类4','主编4','简介4','详情4','2023-02-10'),(55,'2023-02-10 12:48:07','标题5','upload/xinwenxinxi_fengmian5.jpg,upload/xinwenxinxi_fengmian6.jpg,upload/xinwenxinxi_fengmian7.jpg','新闻分类5','主编5','简介5','详情5','2023-02-10'),(56,'2023-02-10 12:48:07','标题6','upload/xinwenxinxi_fengmian6.jpg,upload/xinwenxinxi_fengmian7.jpg,upload/xinwenxinxi_fengmian8.jpg','新闻分类6','主编6','简介6','详情6','2023-02-10'),(57,'2023-02-10 12:48:07','标题7','upload/xinwenxinxi_fengmian7.jpg,upload/xinwenxinxi_fengmian8.jpg,upload/xinwenxinxi_fengmian9.jpg','新闻分类7','主编7','简介7','详情7','2023-02-10'),(58,'2023-02-10 12:48:07','标题8','upload/xinwenxinxi_fengmian8.jpg,upload/xinwenxinxi_fengmian9.jpg,upload/xinwenxinxi_fengmian10.jpg','新闻分类8','主编8','简介8','详情8','2023-02-10');
/*!40000 ALTER TABLE `xinwenxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-14 15:47:29
