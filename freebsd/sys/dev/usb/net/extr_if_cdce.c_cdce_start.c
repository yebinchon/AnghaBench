
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct cdce_softc {int * sc_xfer; } ;


 size_t CDCE_BULK_RX ;
 size_t CDCE_BULK_TX ;
 struct cdce_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
cdce_start(struct usb_ether *ue)
{
 struct cdce_softc *sc = uether_getsc(ue);




 usbd_transfer_start(sc->sc_xfer[CDCE_BULK_TX]);
 usbd_transfer_start(sc->sc_xfer[CDCE_BULK_RX]);
}
