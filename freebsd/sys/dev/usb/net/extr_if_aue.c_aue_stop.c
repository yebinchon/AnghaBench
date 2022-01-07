
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct aue_softc {int * sc_xfer; int sc_flags; } ;


 size_t AUE_BULK_DT_RD ;
 size_t AUE_BULK_DT_WR ;
 int AUE_CTL0 ;
 int AUE_CTL1 ;
 int AUE_FLAG_LINK ;
 size_t AUE_INTR_DT_RD ;
 int AUE_LOCK_ASSERT (struct aue_softc*,int ) ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 int aue_csr_write_1 (struct aue_softc*,int ,int ) ;
 int aue_reset (struct aue_softc*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct aue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
aue_stop(struct usb_ether *ue)
{
 struct aue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 AUE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 sc->sc_flags &= ~AUE_FLAG_LINK;




 usbd_transfer_stop(sc->sc_xfer[AUE_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[AUE_BULK_DT_RD]);
 usbd_transfer_stop(sc->sc_xfer[AUE_INTR_DT_RD]);

 aue_csr_write_1(sc, AUE_CTL0, 0);
 aue_csr_write_1(sc, AUE_CTL1, 0);
 aue_reset(sc);
}
