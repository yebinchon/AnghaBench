
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct mos_softc {scalar_t__ mos_link; int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 size_t MOS_ENDPT_INTR ;
 size_t MOS_ENDPT_RX ;
 size_t MOS_ENDPT_TX ;
 int MOS_LOCK_ASSERT (struct mos_softc*,int ) ;
 int mos_reset (struct mos_softc*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct mos_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
mos_stop(struct usb_ether *ue)
{
 struct mos_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 mos_reset(sc);

 MOS_LOCK_ASSERT(sc, MA_OWNED);
 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;


 usbd_transfer_stop(sc->sc_xfer[MOS_ENDPT_TX]);
 usbd_transfer_stop(sc->sc_xfer[MOS_ENDPT_RX]);
 usbd_transfer_stop(sc->sc_xfer[MOS_ENDPT_INTR]);

 sc->mos_link = 0;
}
