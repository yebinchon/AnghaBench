
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * r_irq; scalar_t__ r_irq_rid; int handle; } ;
struct mvs_controller {TYPE_1__ irq; } ;
typedef int device_t ;


 int ATA_INTR_FLAGS ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int *,int ,struct mvs_controller*,int *) ;
 struct mvs_controller* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mvs_intr ;

__attribute__((used)) static int
mvs_setup_interrupt(device_t dev)
{
 struct mvs_controller *ctlr = device_get_softc(dev);


 ctlr->irq.r_irq_rid = 0;
 if (!(ctlr->irq.r_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &ctlr->irq.r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
  device_printf(dev, "unable to map interrupt\n");
  return (ENXIO);
 }
 if ((bus_setup_intr(dev, ctlr->irq.r_irq, ATA_INTR_FLAGS, ((void*)0),
     mvs_intr, ctlr, &ctlr->irq.handle))) {
  device_printf(dev, "unable to setup interrupt\n");
  bus_release_resource(dev, SYS_RES_IRQ,
      ctlr->irq.r_irq_rid, ctlr->irq.r_irq);
  ctlr->irq.r_irq = ((void*)0);
  return (ENXIO);
 }
 return (0);
}
