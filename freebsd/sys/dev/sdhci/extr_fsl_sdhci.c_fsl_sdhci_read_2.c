
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sdhci_slot {int dummy; } ;
struct fsl_sdhci_softc {scalar_t__ hwtype; int cmd_and_mode; } ;
typedef int device_t ;
typedef int bus_size_t ;


 scalar_t__ HWTYPE_ESDHC ;
 scalar_t__ HWTYPE_USDHC ;
 int RD4 (struct fsl_sdhci_softc*,int) ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_COMMAND_FLAGS ;
 int SDHCI_HOST_VERSION ;
 int SDHCI_INT_STATUS ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_SLOT_INT_STATUS ;
 int SDHCI_SPEC_300 ;
 int SDHCI_SPEC_VER_SHIFT ;
 int SDHCI_TRANSFER_MODE ;
 int USDHC_MIX_CONTROL ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;
 int fsl_sdhc_get_clock (struct fsl_sdhci_softc*) ;

__attribute__((used)) static uint16_t
fsl_sdhci_read_2(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32;

 if (sc->hwtype == HWTYPE_USDHC) {




  if (off == SDHCI_HOST_VERSION) {
   return (SDHCI_SPEC_300 << SDHCI_SPEC_VER_SHIFT);
  }




  if (off == SDHCI_TRANSFER_MODE)
   return (RD4(sc, USDHC_MIX_CONTROL) & 0x37);

 } else if (sc->hwtype == HWTYPE_ESDHC) {







  if (off == SDHCI_TRANSFER_MODE) {
   return (sc->cmd_and_mode & 0x0000ffff);
  } else if (off == SDHCI_COMMAND_FLAGS) {
   return (sc->cmd_and_mode >> 16);
  }
 }






 if (off == SDHCI_SLOT_INT_STATUS) {
  val32 = RD4(sc, SDHCI_INT_STATUS);
  val32 &= RD4(sc, SDHCI_SIGNAL_ENABLE);
  return (val32 ? 1 : 0);
 }





 if (off == SDHCI_CLOCK_CONTROL) {
  return (fsl_sdhc_get_clock(sc));
 }

 return ((RD4(sc, off & ~3) >> (off & 3) * 8) & 0xffff);
}
