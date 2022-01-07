
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct smsc_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; int if_capabilities; int if_capenable; scalar_t__ if_hwassist; } ;


 int IFCAP_RXCSUM ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 size_t SMSC_BULK_DT_WR ;
 int SMSC_LOCK_ASSERT (struct smsc_softc*,int ) ;
 int smsc_dbg_printf (struct smsc_softc*,char*) ;
 int smsc_ifmedia_upd (struct ifnet*) ;
 int smsc_reset (struct smsc_softc*) ;
 int smsc_sethwcsum (struct smsc_softc*) ;
 scalar_t__ smsc_setmacaddress (struct smsc_softc*,int ) ;
 int smsc_setmulti (struct usb_ether*) ;
 int smsc_start (struct usb_ether*) ;
 int smsc_stop (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct smsc_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
smsc_init(struct usb_ether *ue)
{
 struct smsc_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 SMSC_LOCK_ASSERT(sc, MA_OWNED);

 if (smsc_setmacaddress(sc, IF_LLADDR(ifp)))
  smsc_dbg_printf(sc, "setting MAC address failed\n");

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;


 smsc_stop(ue);






 if (!(ifp->if_capabilities & IFCAP_RXCSUM)) {
  ifp->if_capabilities |= IFCAP_RXCSUM;
  ifp->if_capenable |= IFCAP_RXCSUM;
  ifp->if_hwassist = 0;
 }
 smsc_reset(sc);


 smsc_setmulti(ue);


 smsc_sethwcsum(sc);

 usbd_xfer_set_stall(sc->sc_xfer[SMSC_BULK_DT_WR]);


 ifp->if_drv_flags |= IFF_DRV_RUNNING;


 smsc_ifmedia_upd(ifp);
 smsc_start(ue);
}
