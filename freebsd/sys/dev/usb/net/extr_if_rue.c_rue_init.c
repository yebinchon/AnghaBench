
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct rue_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int ETHER_ADDR_LEN ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 size_t RUE_BULK_DT_WR ;
 int RUE_CR ;
 int RUE_CR_EP3CLREN ;
 int RUE_CR_RE ;
 int RUE_CR_TE ;
 int RUE_IDR0 ;
 int RUE_LOCK_ASSERT (struct rue_softc*,int ) ;
 int RUE_RCR ;
 int RUE_RCR_AB ;
 int RUE_RCR_CONFIG ;
 int RUE_TCR ;
 int RUE_TCR_CONFIG ;
 int rue_csr_write_1 (struct rue_softc*,int ,int) ;
 int rue_csr_write_2 (struct rue_softc*,int ,int) ;
 int rue_reset (struct rue_softc*) ;
 int rue_setmulti (struct usb_ether*) ;
 int rue_setpromisc (struct usb_ether*) ;
 int rue_start (struct usb_ether*) ;
 int rue_stop (struct usb_ether*) ;
 int rue_write_mem (struct rue_softc*,int ,int ,int ) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct rue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
rue_init(struct usb_ether *ue)
{
 struct rue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 RUE_LOCK_ASSERT(sc, MA_OWNED);




 rue_reset(sc);


 rue_write_mem(sc, RUE_IDR0, IF_LLADDR(ifp), ETHER_ADDR_LEN);

 rue_stop(ue);




 rue_csr_write_1(sc, RUE_TCR, RUE_TCR_CONFIG);
 rue_csr_write_2(sc, RUE_RCR, RUE_RCR_CONFIG|RUE_RCR_AB);


 rue_setpromisc(ue);

 rue_setmulti(ue);


 rue_csr_write_1(sc, RUE_CR, (RUE_CR_TE | RUE_CR_RE | RUE_CR_EP3CLREN));

 usbd_xfer_set_stall(sc->sc_xfer[RUE_BULK_DT_WR]);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 rue_start(ue);
}
