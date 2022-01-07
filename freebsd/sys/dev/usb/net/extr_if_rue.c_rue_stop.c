
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct rue_softc {int * sc_xfer; int sc_flags; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 size_t RUE_BULK_DT_RD ;
 size_t RUE_BULK_DT_WR ;
 int RUE_CR ;
 int RUE_FLAG_LINK ;
 size_t RUE_INTR_DT_RD ;
 int RUE_LOCK_ASSERT (struct rue_softc*,int ) ;
 int rue_csr_write_1 (struct rue_softc*,int ,int) ;
 int rue_reset (struct rue_softc*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct rue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
rue_stop(struct usb_ether *ue)
{
 struct rue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 RUE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 sc->sc_flags &= ~RUE_FLAG_LINK;




 usbd_transfer_stop(sc->sc_xfer[RUE_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[RUE_BULK_DT_RD]);
 usbd_transfer_stop(sc->sc_xfer[RUE_INTR_DT_RD]);

 rue_csr_write_1(sc, RUE_CR, 0x00);

 rue_reset(sc);
}
