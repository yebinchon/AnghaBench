
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ipheth_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 size_t IPHETH_BULK_TX ;
 int IPHETH_LOCK_ASSERT (struct ipheth_softc*,int ) ;
 int MA_OWNED ;
 int ipheth_start (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct ipheth_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
ipheth_init(struct usb_ether *ue)
{
 struct ipheth_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 IPHETH_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;


 usbd_xfer_set_stall(sc->sc_xfer[IPHETH_BULK_TX]);


 ipheth_start(ue);
}
