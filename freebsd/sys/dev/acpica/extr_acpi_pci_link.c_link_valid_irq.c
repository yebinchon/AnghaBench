
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {int l_num_irqs; int* l_irqs; scalar_t__ l_isa_irq; } ;
struct TYPE_2__ {int SciInterrupt; } ;


 int ACPI_SERIAL_ASSERT (int ) ;
 TYPE_1__ AcpiGbl_FADT ;
 int FALSE ;
 int NUM_ISA_INTERRUPTS ;
 int PCI_INTERRUPT_VALID (int) ;
 int TRUE ;
 int pci_link ;

__attribute__((used)) static int
link_valid_irq(struct link *link, int irq)
{
 int i;

 ACPI_SERIAL_ASSERT(pci_link);


 if (!PCI_INTERRUPT_VALID(irq))
  return (FALSE);


 for (i = 0; i < link->l_num_irqs; i++)
  if (link->l_irqs[i] == irq)
    return (TRUE);





 if (link->l_isa_irq && AcpiGbl_FADT.SciInterrupt == irq &&
     irq < NUM_ISA_INTERRUPTS)
  return (TRUE);


 return (FALSE);
}
