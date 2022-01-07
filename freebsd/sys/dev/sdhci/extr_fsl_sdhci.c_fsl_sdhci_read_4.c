
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct fsl_sdhci_softc {int r1bfix_intmask; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int RD4 (struct fsl_sdhci_softc*,int ) ;
 int SDHCI_CAN_DO_8BITBUS ;
 int SDHCI_CAN_DO_SUSPEND ;
 int SDHCI_CAN_VDD_180 ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_INT_STATUS ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_RETUNE_REQUEST ;
 int SDHCI_STATE_DAT_MASK ;
 struct fsl_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
fsl_sdhci_read_4(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct fsl_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32, wrk32;

 val32 = RD4(sc, off);
 if (off == SDHCI_CAPABILITIES) {
  val32 &= ~SDHCI_CAN_VDD_180;
  val32 &= ~SDHCI_CAN_DO_SUSPEND;
  val32 |= SDHCI_CAN_DO_8BITBUS;
  return (val32);
 }
 if (off == SDHCI_PRESENT_STATE) {
  wrk32 = val32;
  val32 &= 0x000F0F07;
  val32 |= (wrk32 >> 4) & SDHCI_STATE_DAT_MASK;
  val32 |= (wrk32 >> 9) & SDHCI_RETUNE_REQUEST;
  return (val32);
 }





 if (off == SDHCI_INT_STATUS) {
  return (val32 | sc->r1bfix_intmask);
 }

 return val32;
}
