
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_usb_softc {int * uc_xfer; } ;
struct rtwn_softc {int dummy; } ;


 size_t RTWN_BULK_RX ;
 struct rtwn_usb_softc* RTWN_USB_SOFTC (struct rtwn_softc*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
rtwn_usb_start_xfers(struct rtwn_softc *sc)
{
 struct rtwn_usb_softc *uc = RTWN_USB_SOFTC(sc);

 usbd_transfer_start(uc->uc_xfer[RTWN_BULK_RX]);
}
