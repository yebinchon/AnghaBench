
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 unsigned int AR71XX_PCI_IRQ_START ;
 int AR724X_PCI_INTR_DEV0 ;
 int AR724X_PCI_INTR_MASK ;
 int ATH_READ_REG (int ) ;
 int ATH_WRITE_REG (int ,int) ;

__attribute__((used)) static void
ar724x_pci_unmask_irq(void *source)
{
 uint32_t reg;
 unsigned int irq = (unsigned int)source;


 if (irq != AR71XX_PCI_IRQ_START)
  return;


 reg = ATH_READ_REG(AR724X_PCI_INTR_MASK);
 ATH_WRITE_REG(AR724X_PCI_INTR_MASK,
     reg | AR724X_PCI_INTR_DEV0);
}
