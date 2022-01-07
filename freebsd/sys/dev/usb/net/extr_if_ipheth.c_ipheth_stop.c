
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ipheth_softc {int * sc_xfer; } ;


 size_t IPHETH_BULK_RX ;
 size_t IPHETH_BULK_TX ;
 struct ipheth_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
ipheth_stop(struct usb_ether *ue)
{
 struct ipheth_softc *sc = uether_getsc(ue);




 usbd_transfer_stop(sc->sc_xfer[IPHETH_BULK_TX]);
 usbd_transfer_stop(sc->sc_xfer[IPHETH_BULK_RX]);
}
