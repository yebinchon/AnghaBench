
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtwn_usb_softc {int ntx; } ;
struct rtwn_softc {int dummy; } ;


 int R92C_TRXDMA_CTRL_QMAP_3EP ;
 int R92C_TRXDMA_CTRL_QMAP_HQ ;
 int R92C_TRXDMA_CTRL_QMAP_HQ_NQ ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;

uint16_t
rtwn_usb_get_qmap(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);

 switch (uc->ntx) {
 case 1:
  return (R92C_TRXDMA_CTRL_QMAP_HQ);
 case 2:
  return (R92C_TRXDMA_CTRL_QMAP_HQ_NQ);
 default:
  return (R92C_TRXDMA_CTRL_QMAP_3EP);
 }
}
