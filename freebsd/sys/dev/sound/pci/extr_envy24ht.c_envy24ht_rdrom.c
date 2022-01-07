
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int ENVY24HT_CCS_I2CDEV_ROM ;
 int ENVY24HT_CCS_I2CSTAT ;
 int ENVY24HT_CCS_I2CSTAT_ROM ;
 int device_printf (int ,char*,...) ;
 int envy24ht_rdcs (struct sc_info*,int ,int) ;
 int envy24ht_rdi2c (struct sc_info*,int ,int) ;

__attribute__((used)) static int
envy24ht_rdrom(struct sc_info *sc, u_int32_t addr)
{
 u_int32_t data;




 data = envy24ht_rdcs(sc, ENVY24HT_CCS_I2CSTAT, 1);
 if ((data & ENVY24HT_CCS_I2CSTAT_ROM) == 0) {



  return -1;
 }

 return envy24ht_rdi2c(sc, ENVY24HT_CCS_I2CDEV_ROM, addr);
}
