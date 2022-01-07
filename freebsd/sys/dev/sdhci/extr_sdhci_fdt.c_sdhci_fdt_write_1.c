
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sdhci_slot {size_t num; } ;
struct sdhci_fdt_softc {int * mem_res; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_write_1 (int ,int ,int ) ;
 struct sdhci_fdt_softc* device_get_softc (int ) ;

__attribute__((used)) static void
sdhci_fdt_write_1(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint8_t val)
{
 struct sdhci_fdt_softc *sc = device_get_softc(dev);

 bus_write_1(sc->mem_res[slot->num], off, val);
}
