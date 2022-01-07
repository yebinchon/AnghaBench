
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int ENVY24_CCS_I2CDEV_ROM ;
 int ENVY24_CCS_I2CSTAT ;
 int ENVY24_CCS_I2CSTAT_ROM ;
 int device_printf (int ,char*,...) ;
 int envy24_rdcs (struct sc_info*,int ,int) ;
 int envy24_rdi2c (struct sc_info*,int ,int) ;

__attribute__((used)) static int
envy24_rdrom(struct sc_info *sc, u_int32_t addr)
{
 u_int32_t data;




 data = envy24_rdcs(sc, ENVY24_CCS_I2CSTAT, 1);
 if ((data & ENVY24_CCS_I2CSTAT_ROM) == 0) {



  return -1;
 }

 return envy24_rdi2c(sc, ENVY24_CCS_I2CDEV_ROM, addr);
}
