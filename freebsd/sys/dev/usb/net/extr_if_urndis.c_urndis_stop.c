
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct urndis_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 size_t URNDIS_BULK_RX ;
 size_t URNDIS_BULK_TX ;
 int URNDIS_LOCK_ASSERT (struct urndis_softc*,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct urndis_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
urndis_stop(struct usb_ether *ue)
{
 struct urndis_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 URNDIS_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;




 usbd_transfer_stop(sc->sc_xfer[URNDIS_BULK_RX]);
 usbd_transfer_stop(sc->sc_xfer[URNDIS_BULK_TX]);
}
