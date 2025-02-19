
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct fsl_sdhci_softc {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int RD4 (struct fsl_sdhci_softc*,int) ;
 int SDHCI_CTRL_4BITBUS ;
 int SDHCI_CTRL_8BITBUS ;
 int SDHCI_CTRL_ADMA2 ;
 int SDHCI_CTRL_CARD_DET ;
 int SDHCI_CTRL_FORCE_CARD ;
 int SDHCI_CTRL_LED ;
 int SDHCI_CTRL_SDMA ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_SOFTWARE_RESET ;
 int SDHC_PROT_CDSS ;
 int SDHC_PROT_CDTL ;
 int SDHC_PROT_CTRL ;
 int SDHC_PROT_DMA_MASK ;
 int SDHC_PROT_LED ;
 int SDHC_PROT_WIDTH_8BIT ;
 int SDHC_PROT_WIDTH_MASK ;
 int WR4 (struct fsl_sdhci_softc*,int,int) ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
fsl_sdhci_write_1(device_t dev, struct sdhci_slot *slot, bus_size_t off, uint8_t val)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32;






 if (off == SDHCI_HOST_CONTROL) {
  val32 = RD4(sc, SDHC_PROT_CTRL);
  val32 &= ~(SDHC_PROT_LED | SDHC_PROT_DMA_MASK |
      SDHC_PROT_WIDTH_MASK | SDHC_PROT_CDTL | SDHC_PROT_CDSS);
  val32 |= (val & SDHCI_CTRL_LED);
  if (val & SDHCI_CTRL_8BITBUS)
   val32 |= SDHC_PROT_WIDTH_8BIT;
  else
   val32 |= (val & SDHCI_CTRL_4BITBUS);
  val32 |= (val & (SDHCI_CTRL_SDMA | SDHCI_CTRL_ADMA2)) << 4;
  val32 |= (val & (SDHCI_CTRL_CARD_DET | SDHCI_CTRL_FORCE_CARD));
  WR4(sc, SDHC_PROT_CTRL, val32);
  return;
 }


 if (off == SDHCI_POWER_CONTROL) {
  return;
 }






 val32 = RD4(sc, off & ~3);
 val32 &= ~(0xff << (off & 3) * 8);
 val32 |= (val << (off & 3) * 8);

 WR4(sc, off & ~3, val32);
}
