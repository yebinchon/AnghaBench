
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int * r_msix_table; int * r_mem; int * r_msix_pba; int r_msix_pba_rid; int r_msix_tab_rid; int r_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct ahci_controller* device_get_softc (int ) ;

void
ahci_free_mem(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);


 if (ctlr->r_mem)
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
 if (ctlr->r_msix_table)
  bus_release_resource(dev, SYS_RES_MEMORY,
      ctlr->r_msix_tab_rid, ctlr->r_msix_table);
 if (ctlr->r_msix_pba)
  bus_release_resource(dev, SYS_RES_MEMORY,
      ctlr->r_msix_pba_rid, ctlr->r_msix_pba);

 ctlr->r_msix_pba = ctlr->r_mem = ctlr->r_msix_table = ((void*)0);
}
