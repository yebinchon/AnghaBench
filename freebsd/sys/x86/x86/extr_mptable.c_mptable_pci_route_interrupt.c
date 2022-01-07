
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_route_interrupt_args {int irq; int vector; scalar_t__ bus; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int PCI_INVALID_IRQ ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,char,...) ;
 int mptable_pci_route_interrupt_handler ;
 int mptable_walk_table (int ,struct pci_route_interrupt_args*) ;
 int pci0 ;
 scalar_t__ pci_get_bus (int ) ;
 int pci_get_slot (int ) ;

int
mptable_pci_route_interrupt(device_t pcib, device_t dev, int pin)
{
 struct pci_route_interrupt_args args;
 int slot;


 pin--;
 KASSERT(pci0 != -1, ("do not know how to route PCI interrupts"));
 args.bus = pci_get_bus(dev) + pci0;
 slot = pci_get_slot(dev);







 args.irq = slot << 2 | pin;
 args.vector = -1;
 mptable_walk_table(mptable_pci_route_interrupt_handler, &args);
 if (args.vector < 0) {
  device_printf(pcib, "unable to route slot %d INT%c\n", slot,
      'A' + pin);
  return (PCI_INVALID_IRQ);
 }
 if (bootverbose)
  device_printf(pcib, "slot %d INT%c routed to irq %d\n", slot,
      'A' + pin, args.vector);
 return (args.vector);
}
