
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int quirks; } ;
struct sdhci_acpi_softc {TYPE_1__ slot; int intrhand; int * irq_res; int * mem_res; struct sdhci_acpi_device const* acpi_dev; } ;
struct sdhci_acpi_device {int quirks; int uid; int hid; } ;
typedef int device_t ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_CAPABILITIES2 ;
 int SDHCI_QUIRK_DATA_TIMEOUT_1MHZ ;
 int SDHCI_QUIRK_MMC_DDR52 ;
 int SDHCI_READ_4 (int ,TYPE_1__*,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct sdhci_acpi_softc*,int *) ;
 struct sdhci_acpi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int sdhci_acpi_detach (int ) ;
 struct sdhci_acpi_device* sdhci_acpi_find_device (int ) ;
 int sdhci_acpi_intr ;
 int sdhci_init_slot (int ,TYPE_1__*,int ) ;
 int sdhci_quirk_clear ;
 int sdhci_quirk_set ;
 int sdhci_start_slot (TYPE_1__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
sdhci_acpi_attach(device_t dev)
{
 struct sdhci_acpi_softc *sc = device_get_softc(dev);
 int rid, err;
 u_int quirks;
 const struct sdhci_acpi_device *acpi_dev;

 acpi_dev = sdhci_acpi_find_device(dev);
 if (acpi_dev == ((void*)0))
  return (ENXIO);

 sc->acpi_dev = acpi_dev;
 quirks = acpi_dev->quirks;


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
  RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "can't allocate IRQ\n");
  return (ENOMEM);
 }

 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "can't allocate memory resource for slot\n");
  sdhci_acpi_detach(dev);
  return (ENOMEM);
 }






 if (strcmp(acpi_dev->hid, "80860F14") == 0 && acpi_dev->uid == 1 &&
     SDHCI_READ_4(dev, &sc->slot, SDHCI_CAPABILITIES) == 0x446cc8b2 &&
     SDHCI_READ_4(dev, &sc->slot, SDHCI_CAPABILITIES2) == 0x00000807)
  quirks |= SDHCI_QUIRK_MMC_DDR52 | SDHCI_QUIRK_DATA_TIMEOUT_1MHZ;
 quirks &= ~sdhci_quirk_clear;
 quirks |= sdhci_quirk_set;
 sc->slot.quirks = quirks;

 err = sdhci_init_slot(dev, &sc->slot, 0);
 if (err) {
  device_printf(dev, "failed to init slot\n");
  sdhci_acpi_detach(dev);
  return (err);
 }


 err = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), sdhci_acpi_intr, sc, &sc->intrhand);
 if (err) {
  device_printf(dev, "can't setup IRQ\n");
  sdhci_acpi_detach(dev);
  return (err);
 }


 sdhci_start_slot(&sc->slot);

 return (0);
}
