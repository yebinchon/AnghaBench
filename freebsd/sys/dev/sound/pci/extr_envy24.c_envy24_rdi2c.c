
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int DELAY (int) ;
 int ENVY24_CCS_I2CADDR ;
 int ENVY24_CCS_I2CDATA ;
 int ENVY24_CCS_I2CDEV ;
 int ENVY24_CCS_I2CDEV_ADDR ;
 int ENVY24_CCS_I2CDEV_RD ;
 int ENVY24_CCS_I2CSTAT ;
 int ENVY24_CCS_I2CSTAT_BSY ;
 int ENVY24_TIMEOUT ;
 int device_printf (int ,char*,int,...) ;
 int envy24_rdcs (struct sc_info*,int ,int) ;
 int envy24_wrcs (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
envy24_rdi2c(struct sc_info *sc, u_int32_t dev, u_int32_t addr)
{
 u_int32_t data;
 int i;




 for (i = 0; i < ENVY24_TIMEOUT; i++) {
  data = envy24_rdcs(sc, ENVY24_CCS_I2CSTAT, 1);
  if ((data & ENVY24_CCS_I2CSTAT_BSY) == 0)
   break;
  DELAY(32);
 }
 if (i == ENVY24_TIMEOUT) {
  return -1;
 }
 envy24_wrcs(sc, ENVY24_CCS_I2CADDR, addr, 1);
 envy24_wrcs(sc, ENVY24_CCS_I2CDEV,
     (dev & ENVY24_CCS_I2CDEV_ADDR) | ENVY24_CCS_I2CDEV_RD, 1);
 for (i = 0; i < ENVY24_TIMEOUT; i++) {
  data = envy24_rdcs(sc, ENVY24_CCS_I2CSTAT, 1);
  if ((data & ENVY24_CCS_I2CSTAT_BSY) == 0)
   break;
  DELAY(32);
 }
 if (i == ENVY24_TIMEOUT) {
  return -1;
 }
 data = envy24_rdcs(sc, ENVY24_CCS_I2CDATA, 1);




 return (int)data;
}
