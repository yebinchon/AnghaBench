
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct pci_probe_table_args {size_t bus; int found; } ;
typedef TYPE_1__* int_entry_ptr ;
struct TYPE_4__ {scalar_t__ bus_type; } ;
struct TYPE_3__ {size_t src_bus_id; } ;


 int KASSERT (int,char*) ;
 scalar_t__ MPCT_ENTRY_INT ;
 scalar_t__ PCI ;
 TYPE_2__* busses ;
 size_t mptable_maxbusid ;

__attribute__((used)) static void
mptable_pci_probe_table_handler(u_char *entry, void *arg)
{
 struct pci_probe_table_args *args;
 int_entry_ptr intr;

 if (*entry != MPCT_ENTRY_INT)
  return;
 intr = (int_entry_ptr)entry;
 args = (struct pci_probe_table_args *)arg;
 KASSERT(args->bus <= mptable_maxbusid,
     ("bus %d is too big", args->bus));
 KASSERT(busses[args->bus].bus_type == PCI, ("probing for non-PCI bus"));
 if (intr->src_bus_id == args->bus)
  args->found = 1;
}
