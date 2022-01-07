
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int r_irq_rid; int r_irq; int handle; int legacy; } ;
typedef int device_t ;


 int ATA_INTR_FLAGS ;
 int ATA_IRQ_RID ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,int ) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int *,void*,struct ata_pci_controller*,int *) ;
 int device_get_name (int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_msi_count (int ) ;
 int pci_release_msi (int ) ;
 scalar_t__ resource_int_value (int ,int ,char*,int*) ;

int
ata_setup_interrupt(device_t dev, void *intr_func)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    int i, msi = 0;

    if (!ctlr->legacy) {
 if (resource_int_value(device_get_name(dev),
  device_get_unit(dev), "msi", &i) == 0 && i != 0)
     msi = 1;
 if (msi && pci_msi_count(dev) > 0 && pci_alloc_msi(dev, &msi) == 0) {
     ctlr->r_irq_rid = 0x1;
 } else {
     msi = 0;
     ctlr->r_irq_rid = ATA_IRQ_RID;
 }
 if (!(ctlr->r_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
  &ctlr->r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
     device_printf(dev, "unable to map interrupt\n");
     if (msi)
      pci_release_msi(dev);
     return ENXIO;
 }
 if ((bus_setup_intr(dev, ctlr->r_irq, ATA_INTR_FLAGS, ((void*)0),
       intr_func, ctlr, &ctlr->handle))) {
     device_printf(dev, "unable to setup interrupt\n");
     bus_release_resource(dev,
  SYS_RES_IRQ, ctlr->r_irq_rid, ctlr->r_irq);
     if (msi)
      pci_release_msi(dev);
     return ENXIO;
 }
    }
    return 0;
}
