
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct kue_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 size_t KUE_BULK_DT_RD ;
 size_t KUE_BULK_DT_WR ;
 int KUE_LOCK_ASSERT (struct kue_softc*,int ) ;
 int MA_OWNED ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct kue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
kue_stop(struct usb_ether *ue)
{
 struct kue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 KUE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;




 usbd_transfer_stop(sc->sc_xfer[KUE_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[KUE_BULK_DT_RD]);
}
