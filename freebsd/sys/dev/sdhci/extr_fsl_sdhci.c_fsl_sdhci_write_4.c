
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct fsl_sdhci_softc {int r1bfix_intmask; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int SDHCI_INT_STATUS ;
 int WR4 (struct fsl_sdhci_softc*,int ,int ) ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
fsl_sdhci_write_4(device_t dev, struct sdhci_slot *slot, bus_size_t off, uint32_t val)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);


 if (off == SDHCI_INT_STATUS) {
  sc->r1bfix_intmask &= ~val;
 }

 WR4(sc, off, val);
}
