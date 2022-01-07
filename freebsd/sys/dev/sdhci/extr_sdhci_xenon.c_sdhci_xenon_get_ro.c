
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_xenon_softc {int wp_inverted; } ;
typedef int device_t ;


 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int sdhci_generic_get_ro (int ,int ) ;

__attribute__((used)) static int
sdhci_xenon_get_ro(device_t bus, device_t dev)
{
 struct sdhci_xenon_softc *sc = device_get_softc(bus);

 return (sdhci_generic_get_ro(bus, dev) ^ sc->wp_inverted);
}
