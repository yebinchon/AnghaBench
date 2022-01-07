
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct pci_route_interrupt_args {scalar_t__ bus; int irq; int vector; } ;
typedef TYPE_1__* int_entry_ptr ;
struct TYPE_2__ {scalar_t__ src_bus_id; int src_bus_irq; size_t dst_apic_id; int dst_apic_int; } ;


 int KASSERT (int,char*) ;
 scalar_t__ MPCT_ENTRY_INT ;
 int ioapic_get_vector (int *,int ) ;
 int ** ioapics ;

__attribute__((used)) static void
mptable_pci_route_interrupt_handler(u_char *entry, void *arg)
{
 struct pci_route_interrupt_args *args;
 int_entry_ptr intr;
 int vector;

 if (*entry != MPCT_ENTRY_INT)
  return;
 intr = (int_entry_ptr)entry;
 args = (struct pci_route_interrupt_args *)arg;
 if (intr->src_bus_id != args->bus || intr->src_bus_irq != args->irq)
  return;


 KASSERT(ioapics[intr->dst_apic_id] != ((void*)0),
     ("No I/O APIC %d to route interrupt to", intr->dst_apic_id));







 vector = ioapic_get_vector(ioapics[intr->dst_apic_id],
     intr->dst_apic_int);
 if (args->vector == vector)
  return;
 KASSERT(args->vector == -1,
     ("Multiple IRQs for PCI interrupt %d.%d.INT%c: %d and %d\n",
     args->bus, args->irq >> 2, 'A' + (args->irq & 0x3), args->vector,
     vector));
 args->vector = vector;
}
