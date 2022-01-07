
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_softc {int quirks; } ;
typedef int device_t ;


 int SDHCI_QUIRK_LOWER_FREQUENCY ;
 struct sdhci_pci_softc* device_get_softc (int ) ;
 int sdhci_restore_frequency (int ) ;

__attribute__((used)) static int
sdhci_pci_shutdown(device_t dev)
{
 struct sdhci_pci_softc *sc = device_get_softc(dev);

 if (sc->quirks & SDHCI_QUIRK_LOWER_FREQUENCY)
  sdhci_restore_frequency(dev);
 return (0);
}
