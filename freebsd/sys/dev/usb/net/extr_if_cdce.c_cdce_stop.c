
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct cdce_softc {int * sc_xfer; } ;


 size_t CDCE_BULK_RX ;
 size_t CDCE_BULK_TX ;
 size_t CDCE_INTR_RX ;
 size_t CDCE_INTR_TX ;
 int CDCE_LOCK_ASSERT (struct cdce_softc*,int ) ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cdce_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
cdce_stop(struct usb_ether *ue)
{
 struct cdce_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 CDCE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;




 usbd_transfer_stop(sc->sc_xfer[CDCE_BULK_RX]);
 usbd_transfer_stop(sc->sc_xfer[CDCE_BULK_TX]);
 usbd_transfer_stop(sc->sc_xfer[CDCE_INTR_RX]);
 usbd_transfer_stop(sc->sc_xfer[CDCE_INTR_TX]);
}
