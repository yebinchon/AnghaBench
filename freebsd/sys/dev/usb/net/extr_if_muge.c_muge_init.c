
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct muge_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 size_t MUGE_BULK_DT_WR ;
 int MUGE_LOCK_ASSERT (struct muge_softc*,int ) ;
 scalar_t__ lan78xx_setmacaddress (struct muge_softc*,int ) ;
 int muge_dbg_printf (struct muge_softc*,char*) ;
 int muge_ifmedia_upd (struct ifnet*) ;
 int muge_reset (struct muge_softc*) ;
 int muge_sethwcsum (struct muge_softc*) ;
 int muge_setmulti (struct usb_ether*) ;
 int muge_start (struct usb_ether*) ;
 int muge_stop (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct muge_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
muge_init(struct usb_ether *ue)
{
 struct muge_softc *sc = uether_getsc(ue);
 muge_dbg_printf(sc, "Calling muge_init.\n");
 struct ifnet *ifp = uether_getifp(ue);
 MUGE_LOCK_ASSERT(sc, MA_OWNED);

 if (lan78xx_setmacaddress(sc, IF_LLADDR(ifp)))
  muge_dbg_printf(sc, "setting MAC address failed\n");

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;


 muge_stop(ue);


 muge_reset(sc);


 muge_setmulti(ue);


 muge_sethwcsum(sc);

 usbd_xfer_set_stall(sc->sc_xfer[MUGE_BULK_DT_WR]);


 ifp->if_drv_flags |= IFF_DRV_RUNNING;


 muge_ifmedia_upd(ifp);
 muge_start(ue);
}
