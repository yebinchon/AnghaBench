
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ r_irq; int r_irq_rid; int handle; } ;
struct mvs_controller {int mtx; scalar_t__ r_mem; int r_rid; int sc_iomem; TYPE_1__ irq; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 int device_delete_children (int ) ;
 struct mvs_controller* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rman_fini (int *) ;

__attribute__((used)) static int
mvs_detach(device_t dev)
{
 struct mvs_controller *ctlr = device_get_softc(dev);


 device_delete_children(dev);


 if (ctlr->irq.r_irq) {
  bus_teardown_intr(dev, ctlr->irq.r_irq,
      ctlr->irq.handle);
  bus_release_resource(dev, SYS_RES_IRQ,
      ctlr->irq.r_irq_rid, ctlr->irq.r_irq);
 }

 rman_fini(&ctlr->sc_iomem);
 if (ctlr->r_mem)
  bus_release_resource(dev, SYS_RES_MEMORY, ctlr->r_rid, ctlr->r_mem);
 mtx_destroy(&ctlr->mtx);
 return (0);
}
