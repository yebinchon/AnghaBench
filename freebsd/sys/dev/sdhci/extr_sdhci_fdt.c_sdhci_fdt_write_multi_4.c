
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_slot {size_t num; } ;
struct sdhci_fdt_softc {int * mem_res; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_write_multi_4 (int ,int ,int *,int ) ;
 struct sdhci_fdt_softc* device_get_softc (int ) ;

__attribute__((used)) static void
sdhci_fdt_write_multi_4(device_t dev, struct sdhci_slot *slot,
    bus_size_t off, uint32_t *data, bus_size_t count)
{
 struct sdhci_fdt_softc *sc = device_get_softc(dev);

 bus_write_multi_4(sc->mem_res[slot->num], off, data, count);
}
