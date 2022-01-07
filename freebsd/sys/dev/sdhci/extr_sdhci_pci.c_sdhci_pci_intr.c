
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_softc {int num_slots; int * slots; } ;


 int sdhci_generic_intr (int *) ;

__attribute__((used)) static void
sdhci_pci_intr(void *arg)
{
 struct sdhci_pci_softc *sc = (struct sdhci_pci_softc *)arg;
 int i;

 for (i = 0; i < sc->num_slots; i++)
  sdhci_generic_intr(&sc->slots[i]);
}
