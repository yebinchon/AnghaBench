
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct urndis_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 size_t URNDIS_BULK_TX ;
 int URNDIS_LOCK_ASSERT (struct urndis_softc*,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct urndis_softc* uether_getsc (struct usb_ether*) ;
 int urndis_start (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
urndis_init(struct usb_ether *ue)
{
 struct urndis_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 URNDIS_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;


 usbd_xfer_set_stall(sc->sc_xfer[URNDIS_BULK_TX]);


 urndis_start(ue);
}
