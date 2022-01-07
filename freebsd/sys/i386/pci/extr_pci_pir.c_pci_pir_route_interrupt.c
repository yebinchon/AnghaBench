
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_link_lookup {int bus; int device; int pin; struct pci_link** pci_link_ptr; } ;
struct pci_link {int pl_irq; scalar_t__ pl_irqmask; int pl_routed; } ;
struct TYPE_3__ {int ph_pci_irqs; } ;
struct TYPE_4__ {TYPE_1__ pt_header; } ;


 int BUS_CONFIG_INTR (int *,int,int ,int ) ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_LEVEL ;
 int KASSERT (int ,char*) ;
 int PCI_INTERRUPT_VALID (int) ;
 int PCI_INVALID_IRQ ;
 scalar_t__ bootverbose ;
 int ffs (scalar_t__) ;
 int pci_irq_override_mask ;
 int pci_pir_biosroute (int,int,int,int,int) ;
 int pci_pir_choose_irq (struct pci_link*,int ) ;
 int pci_pir_find_link_handler ;
 int pci_pir_walk_table (int ,struct pci_link_lookup*) ;
 TYPE_2__* pci_route_table ;
 int pir_bios_irqs ;
 int * pir_device ;
 scalar_t__ powerof2 (scalar_t__) ;
 int printf (char*,...) ;

int
pci_pir_route_interrupt(int bus, int device, int func, int pin)
{
 struct pci_link_lookup lookup;
 struct pci_link *pci_link;
 int error, irq;

 if (pci_route_table == ((void*)0))
  return (PCI_INVALID_IRQ);


 pci_link = ((void*)0);
 lookup.bus = bus;
 lookup.device = device;
 lookup.pin = pin - 1;
 lookup.pci_link_ptr = &pci_link;
 pci_pir_walk_table(pci_pir_find_link_handler, &lookup);
 if (pci_link == ((void*)0)) {
  printf("$PIR: No matching entry for %d.%d.INT%c\n", bus,
      device, pin - 1 + 'A');
  return (PCI_INVALID_IRQ);
 }
 if (!PCI_INTERRUPT_VALID(pci_link->pl_irq)) {
  if (pci_link->pl_irqmask != 0 && powerof2(pci_link->pl_irqmask))
   irq = ffs(pci_link->pl_irqmask) - 1;
  else
   irq = pci_pir_choose_irq(pci_link,
       pci_route_table->pt_header.ph_pci_irqs);
  if (!PCI_INTERRUPT_VALID(irq))
   irq = pci_pir_choose_irq(pci_link, pir_bios_irqs);
  if (!PCI_INTERRUPT_VALID(irq))
   irq = pci_pir_choose_irq(pci_link,
       pci_irq_override_mask);
  if (!PCI_INTERRUPT_VALID(irq)) {
   if (bootverbose)
    printf(
   "$PIR: Failed to route interrupt for %d:%d INT%c\n",
        bus, device, pin - 1 + 'A');
   return (PCI_INVALID_IRQ);
  }
  pci_link->pl_irq = irq;
 }


 if (!pci_link->pl_routed) {
  error = pci_pir_biosroute(bus, device, func, pin - 1,
      pci_link->pl_irq);


  if (error && !powerof2(pci_link->pl_irqmask)) {
   printf("$PIR: ROUTE_INTERRUPT failed.\n");
   return (PCI_INVALID_IRQ);
  }
  pci_link->pl_routed = 1;


  KASSERT(pir_device != ((void*)0), ("missing pir device"));
  BUS_CONFIG_INTR(pir_device, pci_link->pl_irq,
      INTR_TRIGGER_LEVEL, INTR_POLARITY_LOW);
 }
 if (bootverbose)
  printf("$PIR: %d:%d INT%c routed to irq %d\n", bus, device,
      pin - 1 + 'A', pci_link->pl_irq);
 return (pci_link->pl_irq);
}
