
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ahci_controller {int numirqs; int channels; int cccv; int quirks; TYPE_1__* irqs; scalar_t__ ccc; scalar_t__ msi; int r_mem; } ;
typedef int device_t ;
struct TYPE_2__ {int r_irq_rid; scalar_t__ mode; int handle; int r_irq; struct ahci_controller* ctlr; } ;


 int AHCI_GHC ;
 int AHCI_GHC_MRSM ;
 scalar_t__ AHCI_IRQ_MODE_AFTER ;
 scalar_t__ AHCI_IRQ_MODE_ALL ;
 scalar_t__ AHCI_IRQ_MODE_ONE ;
 int AHCI_MAX_IRQS ;
 int AHCI_Q_EDGEIS ;
 int ATA_INL (int ,int ) ;
 int ATA_INTR_FLAGS ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int ahci_intr ;
 int ahci_intr_one ;
 int ahci_intr_one_edge ;
 int bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_describe_intr (int ,int ,int ,char*,int) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int *,int ,TYPE_1__*,int *) ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

int
ahci_setup_interrupt(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 int i;


 if (ctlr->numirqs > 1 &&
     (ATA_INL(ctlr->r_mem, AHCI_GHC) & AHCI_GHC_MRSM) != 0) {
  device_printf(dev, "Falling back to one MSI\n");
  ctlr->numirqs = 1;
 }


 if (ctlr->numirqs > AHCI_MAX_IRQS) {
  device_printf(dev, "Too many irqs %d > %d (clamping)\n",
      ctlr->numirqs, AHCI_MAX_IRQS);
  ctlr->numirqs = AHCI_MAX_IRQS;
 }


 for (i = 0; i < ctlr->numirqs; i++) {
  ctlr->irqs[i].ctlr = ctlr;
  ctlr->irqs[i].r_irq_rid = i + (ctlr->msi ? 1 : 0);
  if (ctlr->channels == 1 && !ctlr->ccc && ctlr->msi)
   ctlr->irqs[i].mode = AHCI_IRQ_MODE_ONE;
  else if (ctlr->numirqs == 1 || i >= ctlr->channels ||
      (ctlr->ccc && i == ctlr->cccv))
   ctlr->irqs[i].mode = AHCI_IRQ_MODE_ALL;
  else if (ctlr->channels > ctlr->numirqs &&
      i == ctlr->numirqs - 1)
   ctlr->irqs[i].mode = AHCI_IRQ_MODE_AFTER;
  else
   ctlr->irqs[i].mode = AHCI_IRQ_MODE_ONE;
  if (!(ctlr->irqs[i].r_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &ctlr->irqs[i].r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
   device_printf(dev, "unable to map interrupt\n");
   return (ENXIO);
  }
  if ((bus_setup_intr(dev, ctlr->irqs[i].r_irq, ATA_INTR_FLAGS, ((void*)0),
      (ctlr->irqs[i].mode != AHCI_IRQ_MODE_ONE) ? ahci_intr :
       ((ctlr->quirks & AHCI_Q_EDGEIS) ? ahci_intr_one_edge :
        ahci_intr_one),
      &ctlr->irqs[i], &ctlr->irqs[i].handle))) {

   device_printf(dev, "unable to setup interrupt\n");
   return (ENXIO);
  }
  if (ctlr->numirqs > 1) {
   bus_describe_intr(dev, ctlr->irqs[i].r_irq,
       ctlr->irqs[i].handle,
       ctlr->irqs[i].mode == AHCI_IRQ_MODE_ONE ?
       "ch%d" : "%d", i);
  }
 }
 return (0);
}
