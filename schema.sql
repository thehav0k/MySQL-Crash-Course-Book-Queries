DROP DATABASE IF EXISTS crashcourse;
CREATE DATABASE crashcourse
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_general_ci;

USE crashcourse;

CREATE TABLE products
(
  prod_id     CHAR(10)      NOT NULL,
  vend_id     INT           NOT NULL,
  prod_name   CHAR(255)     NOT NULL,
  prod_price  DECIMAL(8,2)  NOT NULL,
  prod_desc   TEXT          NULL,
  PRIMARY KEY (prod_id)
) ENGINE=InnoDB;

CREATE TABLE customers
(
  cust_id       INT        NOT NULL AUTO_INCREMENT,
  cust_name     CHAR(50)   NOT NULL,
  cust_address  CHAR(50)   NULL,
  cust_city     CHAR(50)   NULL,
  cust_state    CHAR(5)    NULL,
  cust_zip      CHAR(10)   NULL,
  cust_country  CHAR(50)   NULL,
  cust_contact  CHAR(50)   NULL,
  cust_email    CHAR(255)  NULL,
  PRIMARY KEY (cust_id)
) ENGINE=InnoDB;

INSERT INTO products (prod_id, vend_id, prod_name, prod_price, prod_desc) VALUES
  ('ANV01',  1001, '.5 ton anvil',    5.99, NULL),
  ('ANV02',  1001, '1 ton anvil',     9.99, NULL),
  ('ANV03',  1001, '2 ton anvil',    14.99, NULL),
  ('OL1',    1002, 'Oil can',         8.99, NULL),
  ('FU1',    1002, 'Fuses',           3.42, NULL),
  ('SLING',  1003, 'Sling',           4.49, NULL),
  ('TNT1',   1003, 'TNT (1 stick)',   2.50, NULL),
  ('TNT2',   1003, 'TNT (5 sticks)', 10.00, NULL),
  ('FB',     1003, 'Bird seed',      10.00, NULL),
  ('FC',     1003, 'Carrots',         2.50, NULL),
  ('SAFE',   1003, 'Safe',           50.00, NULL),
  ('DTNTR',  1003, 'Detonator',      13.00, NULL),
  ('JP1000', 1005, 'JetPack 1000',   35.00, NULL),
  ('JP2000', 1005, 'JetPack 2000',   55.00, NULL);

INSERT INTO customers (cust_id, cust_name, cust_email) VALUES
  (10001, 'Coyote Inc.',    'ylee@coyote.com'),
  (10002, 'Mouse House',     NULL),
  (10003, 'Wascals',        'rabbit@wascally.com'),
  (10004, 'Yosemite Place', 'sam@yosemite.com'),
  (10005, 'E Fudd',          NULL);
