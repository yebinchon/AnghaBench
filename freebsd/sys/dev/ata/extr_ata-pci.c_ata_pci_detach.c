
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {scalar_t__ r_irq_rid; scalar_t__ r_rid2; scalar_t__ r_rid1; scalar_t__ r_res1; int r_type1; scalar_t__ r_res2; int r_type2; int (* chipdeinit ) (int ) ;scalar_t__ r_irq; int handle; } ;
typedef int device_t ;


 scalar_t__ ATA_IRQ_RID ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,scalar_t__,scalar_t__) ;
 int bus_space_unmap (int ,int ,int ) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 int device_delete_children (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_bushandle (scalar_t__) ;
 int rman_get_bustag (scalar_t__) ;
 int rman_get_size (scalar_t__) ;
 int stub1 (int ) ;

int
ata_pci_detach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);


    device_delete_children(dev);

    if (ctlr->r_irq) {
 bus_teardown_intr(dev, ctlr->r_irq, ctlr->handle);
 bus_release_resource(dev, SYS_RES_IRQ, ctlr->r_irq_rid, ctlr->r_irq);
 if (ctlr->r_irq_rid != ATA_IRQ_RID)
     pci_release_msi(dev);
    }
    if (ctlr->chipdeinit != ((void*)0))
 ctlr->chipdeinit(dev);
    if (ctlr->r_res2) {




 bus_release_resource(dev, ctlr->r_type2, ctlr->r_rid2, ctlr->r_res2);
    }
    if (ctlr->r_res1) {




 bus_release_resource(dev, ctlr->r_type1, ctlr->r_rid1, ctlr->r_res1);
    }

    return 0;
}
