
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_xenon_softc {int slot; } ;


 int sdhci_generic_intr (int ) ;

__attribute__((used)) static void
sdhci_xenon_intr(void *arg)
{
 struct sdhci_xenon_softc *sc = (struct sdhci_xenon_softc *)arg;

 sdhci_generic_intr(sc->slot);
}
