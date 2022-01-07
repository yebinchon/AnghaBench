
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ure_softc {int * sc_xfer; int sc_flags; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 size_t URE_BULK_DT_RD ;
 size_t URE_BULK_DT_WR ;
 int URE_FLAG_LINK ;
 int URE_LOCK_ASSERT (struct ure_softc*,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct ure_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
ure_stop(struct usb_ether *ue)
{
 struct ure_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 URE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->sc_flags &= ~URE_FLAG_LINK;




 usbd_transfer_stop(sc->sc_xfer[URE_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[URE_BULK_DT_RD]);
}
