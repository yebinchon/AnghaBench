
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int device; struct ntb_pci_bar_info* bar_info; } ;
struct ntb_pci_bar_info {int * pci_resource; int pci_resource_id; } ;


 int NTB_MAX_BARS ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
intel_ntb_unmap_pci_bar(struct ntb_softc *ntb)
{
 struct ntb_pci_bar_info *current_bar;
 int i;

 for (i = 0; i < NTB_MAX_BARS; i++) {
  current_bar = &ntb->bar_info[i];
  if (current_bar->pci_resource != ((void*)0))
   bus_release_resource(ntb->device, SYS_RES_MEMORY,
       current_bar->pci_resource_id,
       current_bar->pci_resource);
 }
}
