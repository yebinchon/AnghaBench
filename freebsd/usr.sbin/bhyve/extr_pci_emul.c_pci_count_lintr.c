
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slotinfo {TYPE_1__* si_intpins; } ;
struct TYPE_4__ {struct slotinfo* slotinfo; } ;
struct TYPE_3__ {scalar_t__ ii_count; } ;


 int MAXSLOTS ;
 TYPE_2__** pci_businfo ;

int
pci_count_lintr(int bus)
{
 int count, slot, pin;
 struct slotinfo *slotinfo;

 count = 0;
 if (pci_businfo[bus] != ((void*)0)) {
  for (slot = 0; slot < MAXSLOTS; slot++) {
   slotinfo = &pci_businfo[bus]->slotinfo[slot];
   for (pin = 0; pin < 4; pin++) {
    if (slotinfo->si_intpins[pin].ii_count != 0)
     count++;
   }
  }
 }
 return (count);
}
