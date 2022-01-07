
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int ue_udev; } ;
struct cdce_softc {int * sc_xfer; TYPE_1__ sc_ue; } ;


 size_t CDCE_BULK_TX ;
 size_t CDCE_INTR_RX ;
 size_t CDCE_INTR_TX ;
 int CDCE_LOCK_ASSERT (struct cdce_softc*,int ) ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 scalar_t__ USB_MODE_HOST ;
 int cdce_start (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cdce_softc* uether_getsc (struct usb_ether*) ;
 scalar_t__ usbd_get_mode (int ) ;
 int usbd_transfer_start (int ) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
cdce_init(struct usb_ether *ue)
{
 struct cdce_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 CDCE_LOCK_ASSERT(sc, MA_OWNED);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;


 usbd_transfer_start(sc->sc_xfer[CDCE_INTR_RX]);
 usbd_transfer_start(sc->sc_xfer[CDCE_INTR_TX]);







 if (usbd_get_mode(sc->sc_ue.ue_udev) == USB_MODE_HOST)
  usbd_xfer_set_stall(sc->sc_xfer[CDCE_BULK_TX]);


 cdce_start(ue);
}
