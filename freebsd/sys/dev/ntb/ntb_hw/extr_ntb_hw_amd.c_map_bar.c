
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int device; } ;
struct amd_ntb_pci_bar_info {int * pci_resource; int pci_resource_id; } ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int print_map_success (struct amd_ntb_softc*,struct amd_ntb_pci_bar_info*,char*) ;
 int save_bar_parameters (struct amd_ntb_pci_bar_info*) ;

__attribute__((used)) static int
map_bar(struct amd_ntb_softc *ntb, struct amd_ntb_pci_bar_info *bar)
{
 bar->pci_resource = bus_alloc_resource_any(ntb->device, SYS_RES_MEMORY,
     &bar->pci_resource_id, RF_ACTIVE);
 if (bar->pci_resource == ((void*)0))
  return (ENXIO);

 save_bar_parameters(bar);
 print_map_success(ntb, bar, "mmr");

 return (0);
}
