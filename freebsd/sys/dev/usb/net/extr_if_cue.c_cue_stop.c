
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct cue_softc {int * sc_xfer; } ;


 size_t CUE_BULK_DT_RD ;
 size_t CUE_BULK_DT_WR ;
 int CUE_ETHCTL ;
 int CUE_LOCK_ASSERT (struct cue_softc*,int ) ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 int cue_csr_write_1 (struct cue_softc*,int ,int ) ;
 int cue_reset (struct cue_softc*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
cue_stop(struct usb_ether *ue)
{
 struct cue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 CUE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;




 usbd_transfer_stop(sc->sc_xfer[CUE_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[CUE_BULK_DT_RD]);

 cue_csr_write_1(sc, CUE_ETHCTL, 0);
 cue_reset(sc);
}
