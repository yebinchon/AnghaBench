
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int sc_flags; int * sc_xfer; int sc_ue; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 size_t UDAV_BULK_DT_RD ;
 size_t UDAV_BULK_DT_WR ;
 int UDAV_FLAG_LINK ;
 int UDAV_FLAG_NO_PHY ;
 size_t UDAV_INTR_DT_RD ;
 int UDAV_LOCK_ASSERT (struct udav_softc*,int ) ;
 int udav_reset (struct udav_softc*) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
udav_stop(struct usb_ether *ue)
{
 struct udav_softc *sc = ue->ue_sc;
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);

 UDAV_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 if (!(sc->sc_flags & UDAV_FLAG_NO_PHY))
  sc->sc_flags &= ~UDAV_FLAG_LINK;




 usbd_transfer_stop(sc->sc_xfer[UDAV_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[UDAV_BULK_DT_RD]);
 usbd_transfer_stop(sc->sc_xfer[UDAV_INTR_DT_RD]);

 udav_reset(sc);
}
