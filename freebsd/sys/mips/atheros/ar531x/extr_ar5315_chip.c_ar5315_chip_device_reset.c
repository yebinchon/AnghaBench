
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR5315_COLD_AHB ;
 int AR5315_COLD_APB ;
 int AR5315_COLD_CPU ;
 scalar_t__ AR5315_SYSREG_BASE ;
 scalar_t__ AR5315_SYSREG_COLDRESET ;
 int ATH_WRITE_REG (scalar_t__,int) ;

__attribute__((used)) static void
ar5315_chip_device_reset(void)
{
 ATH_WRITE_REG(AR5315_SYSREG_BASE + AR5315_SYSREG_COLDRESET,
  AR5315_COLD_AHB | AR5315_COLD_APB | AR5315_COLD_CPU);
}
