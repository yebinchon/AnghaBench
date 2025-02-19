
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ AR5312_SYSREG_BASE ;
 scalar_t__ AR5312_SYSREG_MISC_INTMASK ;
 scalar_t__ AR5315_SYSREG_BASE ;
 scalar_t__ AR5315_SYSREG_MISC_INTMASK ;
 scalar_t__ AR531X_SOC_AR5315 ;
 int ATH_READ_REG (scalar_t__) ;
 int ATH_WRITE_REG (scalar_t__,int) ;
 scalar_t__ ar531x_soc ;

__attribute__((used)) static void
apb_mask_irq(void *source)
{
 unsigned int irq = (unsigned int)source;
 uint32_t reg;

 if(ar531x_soc >= AR531X_SOC_AR5315) {
  reg = ATH_READ_REG(AR5315_SYSREG_BASE +
   AR5315_SYSREG_MISC_INTMASK);
  ATH_WRITE_REG(AR5315_SYSREG_BASE
   + AR5315_SYSREG_MISC_INTMASK, reg & ~(1 << irq));
 } else {
  reg = ATH_READ_REG(AR5312_SYSREG_BASE +
   AR5312_SYSREG_MISC_INTMASK);
  ATH_WRITE_REG(AR5312_SYSREG_BASE
   + AR5312_SYSREG_MISC_INTMASK, reg & ~(1 << irq));
 }
}
