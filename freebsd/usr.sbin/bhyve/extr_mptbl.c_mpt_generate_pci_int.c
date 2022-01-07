
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* int_entry_ptr ;
struct TYPE_3__ {int src_bus_id; int src_bus_irq; int dst_apic_int; int dst_apic_id; int int_type; int type; } ;


 int INTENTRY_TYPE_INT ;
 int MPCT_ENTRY_INT ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
mpt_generate_pci_int(int bus, int slot, int pin, int pirq_pin, int ioapic_irq,
    void *arg)
{
 int_entry_ptr *mpiep, mpie;

 mpiep = arg;
 mpie = *mpiep;
 memset(mpie, 0, sizeof(*mpie));





 mpie->type = MPCT_ENTRY_INT;
 mpie->int_type = INTENTRY_TYPE_INT;
 mpie->src_bus_id = bus;
 mpie->src_bus_irq = slot << 2 | (pin - 1);
 mpie->dst_apic_id = mpie[-1].dst_apic_id;
 mpie->dst_apic_int = ioapic_irq;

 *mpiep = mpie + 1;
}
