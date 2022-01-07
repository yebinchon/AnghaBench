
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int DELAY (int) ;
 int ENVY24HT_CCS_I2CADDR ;
 int ENVY24HT_CCS_I2CDATA ;
 int ENVY24HT_CCS_I2CDEV ;
 int ENVY24HT_CCS_I2CDEV_ADDR ;
 int ENVY24HT_CCS_I2CDEV_WR ;
 int ENVY24HT_CCS_I2CSTAT ;
 int ENVY24HT_CCS_I2CSTAT_BSY ;
 int ENVY24HT_TIMEOUT ;
 int device_printf (int ,char*,int,int) ;
 int envy24ht_rdcs (struct sc_info*,int ,int) ;
 int envy24ht_wrcs (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
envy24ht_wri2c(struct sc_info *sc, u_int32_t dev, u_int32_t addr, u_int32_t data)
{
 u_int32_t tmp;
 int i;




 for (i = 0; i < ENVY24HT_TIMEOUT; i++) {
  tmp = envy24ht_rdcs(sc, ENVY24HT_CCS_I2CSTAT, 1);
  if ((tmp & ENVY24HT_CCS_I2CSTAT_BSY) == 0)
   break;
  DELAY(32);
 }
 if (i == ENVY24HT_TIMEOUT) {
  return -1;
 }
 envy24ht_wrcs(sc, ENVY24HT_CCS_I2CADDR, addr, 1);
 envy24ht_wrcs(sc, ENVY24HT_CCS_I2CDATA, data, 1);
 envy24ht_wrcs(sc, ENVY24HT_CCS_I2CDEV,
     (dev & ENVY24HT_CCS_I2CDEV_ADDR) | ENVY24HT_CCS_I2CDEV_WR, 1);
 for (i = 0; i < ENVY24HT_TIMEOUT; i++) {
  data = envy24ht_rdcs(sc, ENVY24HT_CCS_I2CSTAT, 1);
  if ((data & ENVY24HT_CCS_I2CSTAT_BSY) == 0)
   break;
  DELAY(32);
 }
 if (i == ENVY24HT_TIMEOUT) {
  return -1;
 }

 return 0;
}
