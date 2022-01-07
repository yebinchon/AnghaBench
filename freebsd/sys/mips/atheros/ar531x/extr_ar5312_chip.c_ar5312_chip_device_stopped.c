
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ AR5312_SYSREG_BASE ;
 scalar_t__ AR5312_SYSREG_RESETCTL ;
 int ATH_READ_REG (scalar_t__) ;

__attribute__((used)) static int
ar5312_chip_device_stopped(uint32_t mask)
{
 uint32_t reg;

 reg = ATH_READ_REG(AR5312_SYSREG_BASE + AR5312_SYSREG_RESETCTL);
 return ((reg & mask) == mask);
}
