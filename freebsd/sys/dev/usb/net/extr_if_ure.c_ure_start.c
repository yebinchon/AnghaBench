
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ure_softc {int * sc_xfer; } ;


 size_t URE_BULK_DT_RD ;
 size_t URE_BULK_DT_WR ;
 struct ure_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
ure_start(struct usb_ether *ue)
{
 struct ure_softc *sc = uether_getsc(ue);




 usbd_transfer_start(sc->sc_xfer[URE_BULK_DT_RD]);
 usbd_transfer_start(sc->sc_xfer[URE_BULK_DT_WR]);
}
