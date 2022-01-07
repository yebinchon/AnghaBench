
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct cdceem_softc {int * sc_xfer; } ;


 size_t CDCEEM_BULK_RX ;
 size_t CDCEEM_BULK_TX ;
 int IFF_DRV_RUNNING ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cdceem_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
cdceem_stop(struct usb_ether *ue)
{
 struct cdceem_softc *sc;
 struct ifnet *ifp;

 sc = uether_getsc(ue);
 ifp = uether_getifp(ue);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

 usbd_transfer_stop(sc->sc_xfer[CDCEEM_BULK_RX]);
 usbd_transfer_stop(sc->sc_xfer[CDCEEM_BULK_TX]);
}
