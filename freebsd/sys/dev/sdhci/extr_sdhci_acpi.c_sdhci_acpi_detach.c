
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_acpi_softc {scalar_t__ mem_res; int slot; scalar_t__ irq_res; scalar_t__ intrhand; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct sdhci_acpi_softc* device_get_softc (int ) ;
 int rman_get_rid (scalar_t__) ;
 int sdhci_cleanup_slot (int *) ;

__attribute__((used)) static int
sdhci_acpi_detach(device_t dev)
{
 struct sdhci_acpi_softc *sc = device_get_softc(dev);

 if (sc->intrhand)
  bus_teardown_intr(dev, sc->irq_res, sc->intrhand);
 if (sc->irq_res)
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(sc->irq_res), sc->irq_res);

 if (sc->mem_res) {
  sdhci_cleanup_slot(&sc->slot);
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->mem_res), sc->mem_res);
 }

 return (0);
}
