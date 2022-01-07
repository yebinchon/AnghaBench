
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ FSL_E500mc ;
 scalar_t__ FSL_E5500 ;
 scalar_t__ FSL_E6500 ;
 int mfpvr () ;

int
mpc85xx_is_qoriq(void)
{
 uint16_t pvr = mfpvr() >> 16;


 if (pvr == FSL_E500mc || pvr == FSL_E5500 || pvr == FSL_E6500)
  return (1);

 return (0);
}
