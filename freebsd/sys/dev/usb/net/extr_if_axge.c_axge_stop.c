
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct axge_softc {int * sc_xfer; int sc_flags; } ;


 int AXGE_ACCESS_MAC ;
 size_t AXGE_BULK_DT_RD ;
 size_t AXGE_BULK_DT_WR ;
 int AXGE_FLAG_LINK ;
 int AXGE_LOCK_ASSERT (struct axge_softc*,int ) ;
 int AXGE_MSR ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 int MSR_RE ;
 int axge_read_cmd_2 (struct axge_softc*,int ,int,int ) ;
 int axge_write_cmd_2 (struct axge_softc*,int ,int,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct axge_softc* uether_getsc (struct usb_ether*) ;
 int usbd_transfer_stop (int ) ;

__attribute__((used)) static void
axge_stop(struct usb_ether *ue)
{
 struct axge_softc *sc;
 struct ifnet *ifp;
 uint16_t val;

 sc = uether_getsc(ue);
 ifp = uether_getifp(ue);

 AXGE_LOCK_ASSERT(sc, MA_OWNED);

 val = axge_read_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR);
 val &= ~MSR_RE;
 axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR, val);

 if (ifp != ((void*)0))
  ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->sc_flags &= ~AXGE_FLAG_LINK;




 usbd_transfer_stop(sc->sc_xfer[AXGE_BULK_DT_WR]);
 usbd_transfer_stop(sc->sc_xfer[AXGE_BULK_DT_RD]);
}
