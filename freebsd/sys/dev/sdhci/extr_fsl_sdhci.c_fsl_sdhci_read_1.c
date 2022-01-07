
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
 int SDHCI_CTRL_ADMA264 ;
 int SDHCI_CTRL_CARD_DET ;
 int SDHCI_CTRL_FORCE_CARD ;
 int SDHCI_CTRL_LED ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_POWER_300 ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_POWER_ON ;



 int SDHC_PROT_CTRL ;
 int SDHC_PROT_DMA_MASK ;




 int SDHC_PROT_WIDTH_MASK ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
fsl_sdhci_read_1(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32, wrk32;






 if (off == SDHCI_HOST_CONTROL) {
  wrk32 = RD4(sc, SDHC_PROT_CTRL);
  val32 = wrk32 & (SDHCI_CTRL_LED | SDHCI_CTRL_CARD_DET |
      SDHCI_CTRL_FORCE_CARD);
  switch (wrk32 & SDHC_PROT_WIDTH_MASK) {
  case 130:

   break;
  case 129:
   val32 |= SDHCI_CTRL_4BITBUS;
   break;
  case 128:
   val32 |= SDHCI_CTRL_8BITBUS;
   break;
  }
  switch (wrk32 & SDHC_PROT_DMA_MASK) {
  case 131:

   break;
  case 134:

   break;
  case 133:
   val32 |= SDHCI_CTRL_ADMA2;
   break;
  case 132:
   val32 |= SDHCI_CTRL_ADMA264;
   break;
  }
  return val32;
 }





 if (off == SDHCI_POWER_CONTROL) {
  return (SDHCI_POWER_ON | SDHCI_POWER_300);
 }


 return ((RD4(sc, off & ~3) >> (off & 3) * 8) & 0xff);
}
