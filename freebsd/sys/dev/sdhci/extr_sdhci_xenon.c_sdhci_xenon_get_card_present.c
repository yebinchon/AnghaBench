
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_xenon_softc {int gpio; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;


 struct sdhci_xenon_softc* device_get_softc (int ) ;
 int sdhci_fdt_gpio_get_present (int ) ;

__attribute__((used)) static bool
sdhci_xenon_get_card_present(device_t dev, struct sdhci_slot *slot)
{
 struct sdhci_xenon_softc *sc = device_get_softc(dev);

 return (sdhci_fdt_gpio_get_present(sc->gpio));
}
