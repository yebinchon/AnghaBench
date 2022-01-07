
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r_irq_rid; int handle; int r_irq; } ;
struct siis_controller {int quirks; TYPE_1__ irq; } ;
typedef int device_t ;


 int ATA_INTR_FLAGS ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SIIS_Q_NOMSI ;
 int SYS_RES_IRQ ;
 int bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int *,int ,struct siis_controller*,int *) ;
 int device_get_name (int ) ;
 struct siis_controller* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int min (int,int ) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 int pci_msi_count (int ) ;
 int resource_int_value (int ,int ,char*,int*) ;
 int siis_intr ;

__attribute__((used)) static int
siis_setup_interrupt(device_t dev)
{
 struct siis_controller *ctlr = device_get_softc(dev);
 int msi = ctlr->quirks & SIIS_Q_NOMSI ? 0 : 1;


 resource_int_value(device_get_name(dev),
     device_get_unit(dev), "msi", &msi);
 if (msi < 0)
  msi = 0;
 else if (msi > 0)
  msi = min(1, pci_msi_count(dev));

 if (msi && pci_alloc_msi(dev, &msi) != 0)
  msi = 0;

 ctlr->irq.r_irq_rid = msi ? 1 : 0;
 if (!(ctlr->irq.r_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &ctlr->irq.r_irq_rid, RF_SHAREABLE | RF_ACTIVE))) {
  device_printf(dev, "unable to map interrupt\n");
  return ENXIO;
 }
 if ((bus_setup_intr(dev, ctlr->irq.r_irq, ATA_INTR_FLAGS, ((void*)0),
     siis_intr, ctlr, &ctlr->irq.handle))) {

  device_printf(dev, "unable to setup interrupt\n");
  return ENXIO;
 }
 return (0);
}
