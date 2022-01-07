
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;


 int SB0_REG_ABS (int ) ;
 int SIBA_CFG0_ADMATCH0 ;
 int SIBA_CFG0_ADMATCH1 ;
 int SIBA_CFG0_ADMATCH2 ;
 int SIBA_CFG0_ADMATCH3 ;

u_int
siba_admatch_offset(uint8_t addrspace)
{
 switch (addrspace) {
 case 0:
  return SB0_REG_ABS(SIBA_CFG0_ADMATCH0);
 case 1:
  return SB0_REG_ABS(SIBA_CFG0_ADMATCH1);
 case 2:
  return SB0_REG_ABS(SIBA_CFG0_ADMATCH2);
 case 3:
  return SB0_REG_ABS(SIBA_CFG0_ADMATCH3);
 default:
  return (0);
 }
}
