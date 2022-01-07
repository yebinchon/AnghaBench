
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_softc {int num_slots; int quirks; int * slots; } ;
typedef int device_t ;


 int SDHCI_QUIRK_LOWER_FREQUENCY ;
 int bus_generic_resume (int ) ;
 struct sdhci_pci_softc* device_get_softc (int ) ;
 int sdhci_generic_resume (int *) ;
 int sdhci_lower_frequency (int ) ;

__attribute__((used)) static int
sdhci_pci_resume(device_t dev)
{
 struct sdhci_pci_softc *sc = device_get_softc(dev);
 int i, err;

 for (i = 0; i < sc->num_slots; i++)
  sdhci_generic_resume(&sc->slots[i]);
 err = bus_generic_resume(dev);
 if (err)
  return (err);
 if (sc->quirks & SDHCI_QUIRK_LOWER_FREQUENCY)
  sdhci_lower_frequency(dev);
 return (0);
}
