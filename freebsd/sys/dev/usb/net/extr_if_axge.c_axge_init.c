
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct axge_softc {int * sc_xfer; } ;


 int AXGE_ACCESS_MAC ;
 size_t AXGE_BULK_DT_WR ;
 int AXGE_LOCK_ASSERT (struct axge_softc*,int ) ;
 int AXGE_MMSR ;
 int AXGE_MSR ;
 int AXGE_NIDR ;
 int AXGE_PWLHR ;
 int AXGE_PWLLR ;
 int ETHER_ADDR_LEN ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 int MSR_FD ;
 int MSR_GM ;
 int MSR_RE ;
 int MSR_RFC ;
 int MSR_TFC ;
 int axge_csum_cfg (struct usb_ether*) ;
 int axge_ifmedia_upd (struct ifnet*) ;
 int axge_read_cmd_1 (struct axge_softc*,int ,int ) ;
 int axge_reset (struct axge_softc*) ;
 int axge_rxfilter (struct usb_ether*) ;
 int axge_stop (struct usb_ether*) ;
 int axge_write_cmd_1 (struct axge_softc*,int ,int ,int) ;
 int axge_write_cmd_2 (struct axge_softc*,int ,int,int ,int) ;
 int axge_write_mem (struct axge_softc*,int ,int ,int ,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct axge_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
axge_init(struct usb_ether *ue)
{
 struct axge_softc *sc;
 struct ifnet *ifp;

 sc = uether_getsc(ue);
 ifp = uether_getifp(ue);
 AXGE_LOCK_ASSERT(sc, MA_OWNED);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;




 axge_stop(ue);

 axge_reset(sc);


 axge_write_mem(sc, AXGE_ACCESS_MAC, ETHER_ADDR_LEN, AXGE_NIDR,
     IF_LLADDR(ifp), ETHER_ADDR_LEN);

 axge_write_cmd_1(sc, AXGE_ACCESS_MAC, AXGE_PWLLR, 0x34);
 axge_write_cmd_1(sc, AXGE_ACCESS_MAC, AXGE_PWLHR, 0x52);


 axge_csum_cfg(ue);


 axge_rxfilter(ue);
 axge_write_cmd_1(sc, AXGE_ACCESS_MAC, AXGE_MMSR, 0);
 (void)axge_read_cmd_1(sc, AXGE_ACCESS_MAC, AXGE_MMSR);


 axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_MSR, MSR_GM | MSR_FD |
     MSR_RFC | MSR_TFC | MSR_RE);

 usbd_xfer_set_stall(sc->sc_xfer[AXGE_BULK_DT_WR]);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;

 axge_ifmedia_upd(ifp);
}
