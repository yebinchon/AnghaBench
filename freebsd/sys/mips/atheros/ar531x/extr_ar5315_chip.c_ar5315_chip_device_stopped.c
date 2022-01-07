
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ AR5315_SYSREG_BASE ;
 scalar_t__ AR5315_SYSREG_COLDRESET ;
 int ATH_READ_REG (scalar_t__) ;

__attribute__((used)) static int
ar5315_chip_device_stopped(uint32_t mask)
{
 uint32_t reg;

 reg = ATH_READ_REG(AR5315_SYSREG_BASE + AR5315_SYSREG_COLDRESET);
 return ((reg & mask) == mask);
}
