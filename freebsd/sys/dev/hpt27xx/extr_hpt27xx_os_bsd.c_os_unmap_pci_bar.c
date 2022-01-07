
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pcibar; int pcidev; } ;
struct TYPE_3__ {void* base; int res; int rid; int type; } ;
typedef TYPE_2__* PHBA ;


 int bus_release_resource (int ,int ,int ,int ) ;

void os_unmap_pci_bar(void *osext, void *base)
{
 PHBA hba = (PHBA)osext;
 int index;

 for (index=0; index<6; index++) {
  if (hba->pcibar[index].base==base) {
   bus_release_resource(hba->pcidev, hba->pcibar[index].type,
    hba->pcibar[index].rid, hba->pcibar[index].res);
   hba->pcibar[index].base = 0;
   return;
  }
 }
}
