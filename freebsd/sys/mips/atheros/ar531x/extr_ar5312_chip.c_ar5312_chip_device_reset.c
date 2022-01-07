
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR5312_RESET_SYSTEM ;
 scalar_t__ AR5312_SYSREG_BASE ;
 scalar_t__ AR5312_SYSREG_RESETCTL ;
 int ATH_WRITE_REG (scalar_t__,int ) ;

__attribute__((used)) static void
ar5312_chip_device_reset(void)
{
 ATH_WRITE_REG(AR5312_SYSREG_BASE + AR5312_SYSREG_RESETCTL,
  AR5312_RESET_SYSTEM);
}
