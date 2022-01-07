
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_acpi_softc {int slot; } ;


 int sdhci_generic_intr (int *) ;

__attribute__((used)) static void
sdhci_acpi_intr(void *arg)
{
 struct sdhci_acpi_softc *sc = (struct sdhci_acpi_softc *)arg;

 sdhci_generic_intr(&sc->slot);
}
