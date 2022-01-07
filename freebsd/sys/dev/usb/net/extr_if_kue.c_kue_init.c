
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct kue_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int ETHER_ADDR_LEN ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 size_t KUE_BULK_DT_WR ;
 int KUE_CMD_SET_MAC ;
 int KUE_CMD_SET_SOFS ;
 int KUE_CMD_SET_URB_SIZE ;
 int KUE_CTL_WRITE ;
 int KUE_LOCK_ASSERT (struct kue_softc*,int ) ;
 int MA_OWNED ;
 int kue_ctl (struct kue_softc*,int ,int ,int ,int ,int ) ;
 int kue_setpromisc (struct usb_ether*) ;
 int kue_setword (struct kue_softc*,int ,int) ;
 int kue_start (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct kue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
kue_init(struct usb_ether *ue)
{
 struct kue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 KUE_LOCK_ASSERT(sc, MA_OWNED);


 kue_ctl(sc, KUE_CTL_WRITE, KUE_CMD_SET_MAC,
     0, IF_LLADDR(ifp), ETHER_ADDR_LEN);
 kue_setword(sc, KUE_CMD_SET_URB_SIZE, 64);


 kue_setpromisc(ue);

 usbd_xfer_set_stall(sc->sc_xfer[KUE_BULK_DT_WR]);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 kue_start(ue);
}
