
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct fsl_sdhci_softc {int mem_res; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_write_multi_4 (int ,int ,int *,int ) ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
fsl_sdhci_write_multi_4(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint32_t *data, bus_size_t count)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);

 bus_write_multi_4(sc->mem_res, off, data, count);
}
