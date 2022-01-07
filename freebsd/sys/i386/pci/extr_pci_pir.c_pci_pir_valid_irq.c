
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_link {int pl_irqmask; } ;


 int PCI_INTERRUPT_VALID (int) ;

__attribute__((used)) static int
pci_pir_valid_irq(struct pci_link *pci_link, int irq)
{

 if (!PCI_INTERRUPT_VALID(irq))
  return (0);
 return (pci_link->pl_irqmask & (1 << irq));
}
