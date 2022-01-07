
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_pci_bar_info {int map_mode; int pci_resource; int vbase; int size; int pbase; int pci_bus_handle; int pci_bus_tag; } ;


 int VM_MEMATTR_UNCACHEABLE ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int rman_get_size (int ) ;
 int rman_get_start (int ) ;
 int rman_get_virtual (int ) ;

__attribute__((used)) static void
save_bar_parameters(struct amd_ntb_pci_bar_info *bar)
{
 bar->pci_bus_tag = rman_get_bustag(bar->pci_resource);
 bar->pci_bus_handle = rman_get_bushandle(bar->pci_resource);
 bar->pbase = rman_get_start(bar->pci_resource);
 bar->size = rman_get_size(bar->pci_resource);
 bar->vbase = rman_get_virtual(bar->pci_resource);
 bar->map_mode = VM_MEMATTR_UNCACHEABLE;
}
