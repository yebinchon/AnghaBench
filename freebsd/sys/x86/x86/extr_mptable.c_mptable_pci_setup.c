
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bus_type; } ;


 scalar_t__ PCI ;
 TYPE_1__* busses ;
 int mptable_maxbusid ;
 int panic (char*) ;
 int pci0 ;

__attribute__((used)) static void
mptable_pci_setup(void)
{
 int i;





 for (i = 0; i <= mptable_maxbusid; i++)
  if (busses[i].bus_type == PCI) {
   if (pci0 == -1)
    pci0 = i;
   else if (pci0 != 0)
    panic(
  "MPTable contains multiple PCI buses but no PCI bus 0");
  }
}
