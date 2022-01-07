
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_softc {int num_slots; int quirks; int * mem_res; int * slots; int irq_res; int intrhand; } ;
typedef int device_t ;


 int SDHCI_QUIRK_LOWER_FREQUENCY ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct sdhci_pci_softc* device_get_softc (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int ) ;
 int sdhci_cleanup_slot (int *) ;
 int sdhci_restore_frequency (int ) ;

__attribute__((used)) static int
sdhci_pci_detach(device_t dev)
{
 struct sdhci_pci_softc *sc = device_get_softc(dev);
 int i;

 bus_teardown_intr(dev, sc->irq_res, sc->intrhand);
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(sc->irq_res), sc->irq_res);
 pci_release_msi(dev);

 for (i = 0; i < sc->num_slots; i++) {
  sdhci_cleanup_slot(&sc->slots[i]);
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(sc->mem_res[i]), sc->mem_res[i]);
 }
 if (sc->quirks & SDHCI_QUIRK_LOWER_FREQUENCY)
  sdhci_restore_frequency(dev);
 return (0);
}
