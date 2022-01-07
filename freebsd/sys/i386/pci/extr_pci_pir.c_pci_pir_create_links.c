
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_link {int pl_references; int pl_id; scalar_t__ pl_routed; int pl_irq; int pl_irqmask; } ;
struct PIR_intpin {int link; int irqs; } ;
struct PIR_entry {int pe_bus; int pe_device; struct PIR_intpin* pe_intpin; } ;


 int M_PIR ;
 int M_WAITOK ;
 int PCI_INVALID_IRQ ;
 int TAILQ_INSERT_TAIL (int *,struct pci_link*,int ) ;
 scalar_t__ bootverbose ;
 struct pci_link* malloc (int,int ,int ) ;
 int pci_links ;
 struct pci_link* pci_pir_find_link (int) ;
 int pl_links ;
 int printf (char*,int,int,int,int) ;

__attribute__((used)) static void
pci_pir_create_links(struct PIR_entry *entry, struct PIR_intpin *intpin,
    void *arg)
{
 struct pci_link *pci_link;

 pci_link = pci_pir_find_link(intpin->link);
 if (pci_link != ((void*)0)) {
  pci_link->pl_references++;
  if (intpin->irqs != pci_link->pl_irqmask) {
   if (bootverbose)
    printf(
 "$PIR: Entry %d.%d.INT%c has different mask for link %#x, merging\n",
        entry->pe_bus, entry->pe_device,
        (intpin - entry->pe_intpin) + 'A',
        pci_link->pl_id);
   pci_link->pl_irqmask &= intpin->irqs;
  }
 } else {
  pci_link = malloc(sizeof(struct pci_link), M_PIR, M_WAITOK);
  pci_link->pl_id = intpin->link;
  pci_link->pl_irqmask = intpin->irqs;
  pci_link->pl_irq = PCI_INVALID_IRQ;
  pci_link->pl_references = 1;
  pci_link->pl_routed = 0;
  TAILQ_INSERT_TAIL(&pci_links, pci_link, pl_links);
 }
}
