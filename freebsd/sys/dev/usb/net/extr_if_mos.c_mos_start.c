
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct mos_softc {int * sc_xfer; } ;


 size_t MOS_ENDPT_INTR ;
 size_t MOS_ENDPT_RX ;
 size_t MOS_ENDPT_TX ;
 struct mos_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
mos_start(struct usb_ether *ue)
{
 struct mos_softc *sc = uether_getsc(ue);




 usbd_transfer_start(sc->sc_xfer[MOS_ENDPT_TX]);
 usbd_transfer_start(sc->sc_xfer[MOS_ENDPT_RX]);
 usbd_transfer_start(sc->sc_xfer[MOS_ENDPT_INTR]);
}
