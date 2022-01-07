
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slotinfo {TYPE_1__* si_funcs; } ;
struct businfo {struct slotinfo* slotinfo; } ;
struct TYPE_2__ {int * fi_devi; } ;


 int MAXFUNCS ;
 struct businfo** pci_businfo ;

__attribute__((used)) static int
pci_emul_is_mfdev(int bus, int slot)
{
 struct businfo *bi;
 struct slotinfo *si;
 int f, numfuncs;

 numfuncs = 0;
 if ((bi = pci_businfo[bus]) != ((void*)0)) {
  si = &bi->slotinfo[slot];
  for (f = 0; f < MAXFUNCS; f++) {
   if (si->si_funcs[f].fi_devi != ((void*)0)) {
    numfuncs++;
   }
  }
 }
 return (numfuncs > 1);
}
