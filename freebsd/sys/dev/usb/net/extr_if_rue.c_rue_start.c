
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct rue_softc {int * sc_xfer; } ;


 size_t RUE_BULK_DT_RD ;
 size_t RUE_BULK_DT_WR ;
 size_t RUE_INTR_DT_RD ;
 struct rue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
rue_start(struct usb_ether *ue)
{
 struct rue_softc *sc = uether_getsc(ue);




 usbd_transfer_start(sc->sc_xfer[RUE_INTR_DT_RD]);
 usbd_transfer_start(sc->sc_xfer[RUE_BULK_DT_RD]);
 usbd_transfer_start(sc->sc_xfer[RUE_BULK_DT_WR]);
}
