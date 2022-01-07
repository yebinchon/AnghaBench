
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sdhci_slot {size_t num; } ;
struct sdhci_fdt_softc {int * mem_res; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_read_2 (int ,int ) ;
 struct sdhci_fdt_softc* device_get_softc (int ) ;

__attribute__((used)) static uint16_t
sdhci_fdt_read_2(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct sdhci_fdt_softc *sc = device_get_softc(dev);

 return (bus_read_2(sc->mem_res[slot->num], off));
}
