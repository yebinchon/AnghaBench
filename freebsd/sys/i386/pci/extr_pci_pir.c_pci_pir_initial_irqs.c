
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pci_link {scalar_t__ pl_irq; int pl_id; int pl_routed; } ;
struct PIR_intpin {int link; } ;
struct PIR_entry {int pe_intpin; int pe_bus; int pe_device; } ;


 scalar_t__ NUM_ISA_INTERRUPTS ;
 scalar_t__ PCI_INVALID_IRQ ;
 struct pci_link* pci_pir_find_link (int ) ;
 scalar_t__ pci_pir_search_irq (int,int,scalar_t__) ;
 int pci_pir_valid_irq (struct pci_link*,scalar_t__) ;
 int printf (char*,scalar_t__,int,int,scalar_t__,int,...) ;

__attribute__((used)) static void
pci_pir_initial_irqs(struct PIR_entry *entry, struct PIR_intpin *intpin,
    void *arg)
{
 struct pci_link *pci_link;
 uint8_t irq, pin;

 pin = intpin - entry->pe_intpin;
 pci_link = pci_pir_find_link(intpin->link);
 irq = pci_pir_search_irq(entry->pe_bus, entry->pe_device, pin);
 if (irq == PCI_INVALID_IRQ || irq == pci_link->pl_irq)
  return;


 if (irq >= NUM_ISA_INTERRUPTS) {
  printf(
 "$PIR: Ignoring invalid BIOS IRQ %d from %d.%d.INT%c for link %#x\n",
      irq, entry->pe_bus, entry->pe_device, pin + 'A',
      pci_link->pl_id);
  return;
 }





 if (pci_link->pl_irq == PCI_INVALID_IRQ) {
  if (!pci_pir_valid_irq(pci_link, irq))
   printf(
 "$PIR: Using invalid BIOS IRQ %d from %d.%d.INT%c for link %#x\n",
       irq, entry->pe_bus, entry->pe_device, pin + 'A',
       pci_link->pl_id);
  pci_link->pl_irq = irq;
  pci_link->pl_routed = 1;
  return;
 }
 if (!pci_pir_valid_irq(pci_link, irq)) {
  printf(
  "$PIR: BIOS IRQ %d for %d.%d.INT%c is not valid for link %#x\n",
      irq, entry->pe_bus, entry->pe_device, pin + 'A',
      pci_link->pl_id);
 } else if (!pci_pir_valid_irq(pci_link, pci_link->pl_irq)) {
  printf(
"$PIR: Preferring valid BIOS IRQ %d from %d.%d.INT%c for link %#x to IRQ %d\n",
      irq, entry->pe_bus, entry->pe_device, pin + 'A',
      pci_link->pl_id, pci_link->pl_irq);
  pci_link->pl_irq = irq;
  pci_link->pl_routed = 1;
 } else
  printf(
 "$PIR: BIOS IRQ %d for %d.%d.INT%c does not match link %#x irq %d\n",
      irq, entry->pe_bus, entry->pe_device, pin + 'A',
      pci_link->pl_id, pci_link->pl_irq);
}
