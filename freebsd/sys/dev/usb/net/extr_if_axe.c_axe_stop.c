
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct axe_softc {int * sc_xfer; int sc_flags; } ;


 size_t AXE_BULK_DT_RD ;
 size_t AXE_BULK_DT_WR ;
 int AXE_FLAG_LINK ;
 int AXE_LOCK_ASSERT (struct axe_softc*,int ) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct axe_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
axe_stop(struct usb_ether *ue)
{
 struct axe_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 AXE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->sc_flags &= ~AXE_FLAG_LINK;




 usbd_transfer_stop(sc->sc_xfer[AXE_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[AXE_BULK_DT_RD]);
}
