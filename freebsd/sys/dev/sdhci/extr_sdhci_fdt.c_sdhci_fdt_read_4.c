
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_slot {size_t num; } ;
struct sdhci_fdt_softc {scalar_t__ no_18v; int * mem_res; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int SDHCI_CAN_VDD_180 ;
 int SDHCI_CAPABILITIES ;
 int bus_read_4 (int ,int ) ;
 struct sdhci_fdt_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
sdhci_fdt_read_4(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct sdhci_fdt_softc *sc = device_get_softc(dev);
 uint32_t val32;

 val32 = bus_read_4(sc->mem_res[slot->num], off);
 if (off == SDHCI_CAPABILITIES && sc->no_18v)
  val32 &= ~SDHCI_CAN_VDD_180;

 return (val32);
}
