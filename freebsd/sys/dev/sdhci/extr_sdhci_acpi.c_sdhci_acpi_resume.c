
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_acpi_softc {int slot; } ;
typedef int device_t ;


 int bus_generic_resume (int ) ;
 struct sdhci_acpi_softc* device_get_softc (int ) ;
 int sdhci_generic_resume (int *) ;

__attribute__((used)) static int
sdhci_acpi_resume(device_t dev)
{
 struct sdhci_acpi_softc *sc = device_get_softc(dev);
 int err;

 sdhci_generic_resume(&sc->slot);
 err = bus_generic_resume(dev);
 if (err)
  return (err);
 return (0);
}
