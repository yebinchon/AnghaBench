
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int device; } ;
struct ntb_pci_bar_info {int map_mode; int * pci_resource; int pci_resource_id; } ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int VM_MEMATTR_UNCACHEABLE ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int print_map_success (struct ntb_softc*,struct ntb_pci_bar_info*,char*) ;
 int save_bar_parameters (struct ntb_pci_bar_info*) ;

__attribute__((used)) static int
map_mmr_bar(struct ntb_softc *ntb, struct ntb_pci_bar_info *bar)
{

 bar->pci_resource = bus_alloc_resource_any(ntb->device, SYS_RES_MEMORY,
     &bar->pci_resource_id, RF_ACTIVE);
 if (bar->pci_resource == ((void*)0))
  return (ENXIO);

 save_bar_parameters(bar);
 bar->map_mode = VM_MEMATTR_UNCACHEABLE;
 print_map_success(ntb, bar, "mmr");
 return (0);
}
