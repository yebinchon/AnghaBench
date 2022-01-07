
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct cue_softc {int * sc_xfer; } ;


 scalar_t__ CUE_ADVANCED_OPMODES ;
 int CUE_AOP_EMBED_RXLEN ;
 size_t CUE_BULK_DT_WR ;
 scalar_t__ CUE_ETHCTL ;
 int CUE_ETHCTL_MCAST_ON ;
 int CUE_ETHCTL_RX_ON ;
 scalar_t__ CUE_LEDCTL ;
 int CUE_LEDCTL_FOLLOW_LINK ;
 int CUE_LOCK_ASSERT (struct cue_softc*,int ) ;
 scalar_t__ CUE_PAR0 ;
 scalar_t__ CUE_RX_BUFPKTS ;
 int CUE_RX_FRAMES ;
 scalar_t__ CUE_TX_BUFPKTS ;
 int CUE_TX_FRAMES ;
 int ETHER_ADDR_LEN ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 int cue_csr_write_1 (struct cue_softc*,scalar_t__,int) ;
 int cue_reset (struct cue_softc*) ;
 int cue_setpromisc (struct usb_ether*) ;
 int cue_start (struct usb_ether*) ;
 int cue_stop (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct cue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
cue_init(struct usb_ether *ue)
{
 struct cue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 int i;

 CUE_LOCK_ASSERT(sc, MA_OWNED);




 cue_stop(ue);




 for (i = 0; i < ETHER_ADDR_LEN; i++)
  cue_csr_write_1(sc, CUE_PAR0 - i, IF_LLADDR(ifp)[i]);


 cue_csr_write_1(sc, CUE_ETHCTL, CUE_ETHCTL_RX_ON | CUE_ETHCTL_MCAST_ON);


 cue_setpromisc(ue);





 cue_csr_write_1(sc, CUE_RX_BUFPKTS, CUE_RX_FRAMES);
 cue_csr_write_1(sc, CUE_TX_BUFPKTS, CUE_TX_FRAMES);


 cue_csr_write_1(sc, CUE_ADVANCED_OPMODES,
     CUE_AOP_EMBED_RXLEN | 0x01);


 cue_csr_write_1(sc, CUE_LEDCTL, CUE_LEDCTL_FOLLOW_LINK);

 usbd_xfer_set_stall(sc->sc_xfer[CUE_BULK_DT_WR]);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 cue_start(ue);
}
