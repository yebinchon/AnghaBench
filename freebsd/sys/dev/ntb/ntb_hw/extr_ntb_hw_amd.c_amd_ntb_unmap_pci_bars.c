
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int device; struct amd_ntb_pci_bar_info* bar_info; } ;
struct amd_ntb_pci_bar_info {int * pci_resource; int pci_resource_id; } ;


 int NTB_MAX_BARS ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
amd_ntb_unmap_pci_bars(struct amd_ntb_softc *ntb)
{
 struct amd_ntb_pci_bar_info *bar_info;
 int i;

 for (i = 0; i < NTB_MAX_BARS; i++) {
  bar_info = &ntb->bar_info[i];
  if (bar_info->pci_resource != ((void*)0))
   bus_release_resource(ntb->device, SYS_RES_MEMORY,
       bar_info->pci_resource_id, bar_info->pci_resource);
 }
}
