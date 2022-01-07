
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_softc {int num_slots; int * slots; } ;
typedef int device_t ;


 int bus_generic_suspend (int ) ;
 struct sdhci_pci_softc* device_get_softc (int ) ;
 int sdhci_generic_suspend (int *) ;

__attribute__((used)) static int
sdhci_pci_suspend(device_t dev)
{
 struct sdhci_pci_softc *sc = device_get_softc(dev);
 int i, err;

 err = bus_generic_suspend(dev);
 if (err)
  return (err);
 for (i = 0; i < sc->num_slots; i++)
  sdhci_generic_suspend(&sc->slots[i]);
 return (0);
}
