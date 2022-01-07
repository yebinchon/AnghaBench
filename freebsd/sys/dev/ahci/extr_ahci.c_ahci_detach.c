
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahci_controller {int numirqs; int ch_mtx; int sc_iomem; int dma_tag; TYPE_1__* irqs; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ r_irq; int r_irq_rid; int handle; } ;


 int SYS_RES_IRQ ;
 int ahci_free_mem (int ) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 int device_delete_children (int ) ;
 struct ahci_controller* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rman_fini (int *) ;

int
ahci_detach(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 int i;


 device_delete_children(dev);


 for (i = 0; i < ctlr->numirqs; i++) {
  if (ctlr->irqs[i].r_irq) {
   bus_teardown_intr(dev, ctlr->irqs[i].r_irq,
       ctlr->irqs[i].handle);
   bus_release_resource(dev, SYS_RES_IRQ,
       ctlr->irqs[i].r_irq_rid, ctlr->irqs[i].r_irq);
  }
 }
 bus_dma_tag_destroy(ctlr->dma_tag);

 rman_fini(&ctlr->sc_iomem);
 ahci_free_mem(dev);
 mtx_destroy(&ctlr->ch_mtx);
 return (0);
}
