
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_probe_table_args {int bus; scalar_t__ found; } ;
struct TYPE_2__ {scalar_t__ bus_type; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ PCI ;
 TYPE_1__* busses ;
 int * mpct ;
 int mptable_maxbusid ;
 int mptable_pci_probe_table_handler ;
 int mptable_walk_table (int ,struct pci_probe_table_args*) ;
 int pci0 ;

int
mptable_pci_probe_table(int bus)
{
 struct pci_probe_table_args args;

 if (bus < 0)
  return (EINVAL);
 if (mpct == ((void*)0) || pci0 == -1 || pci0 + bus > mptable_maxbusid)
  return (ENXIO);
 if (busses[pci0 + bus].bus_type != PCI)
  return (ENXIO);
 args.bus = pci0 + bus;
 args.found = 0;
 mptable_walk_table(mptable_pci_probe_table_handler, &args);
 if (args.found == 0)
  return (ENXIO);
 return (0);
}
