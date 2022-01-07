
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct cdceem_softc {int * sc_xfer; } ;


 size_t CDCEEM_BULK_RX ;
 size_t CDCEEM_BULK_TX ;
 struct cdceem_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
cdceem_start(struct usb_ether *ue)
{
 struct cdceem_softc *sc;

 sc = uether_getsc(ue);




 usbd_transfer_start(sc->sc_xfer[CDCEEM_BULK_RX]);
 usbd_transfer_start(sc->sc_xfer[CDCEEM_BULK_TX]);
}
