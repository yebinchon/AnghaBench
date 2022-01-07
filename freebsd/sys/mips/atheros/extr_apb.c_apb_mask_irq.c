
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int AR71XX_MISC_INTR_MASK ;
 int ATH_READ_REG (int ) ;
 int ATH_WRITE_REG (int ,int) ;

__attribute__((used)) static void
apb_mask_irq(void *source)
{
 unsigned int irq = (unsigned int)source;
 uint32_t reg;

 reg = ATH_READ_REG(AR71XX_MISC_INTR_MASK);
 ATH_WRITE_REG(AR71XX_MISC_INTR_MASK, reg & ~(1 << irq));

}
