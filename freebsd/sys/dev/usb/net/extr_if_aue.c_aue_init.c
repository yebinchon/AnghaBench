
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct aue_softc {int * sc_xfer; } ;


 size_t AUE_BULK_DT_WR ;
 scalar_t__ AUE_CTL0 ;
 int AUE_CTL0_RXSTAT_APPEND ;
 int AUE_CTL0_RX_ENB ;
 int AUE_CTL0_TX_ENB ;
 scalar_t__ AUE_CTL2 ;
 int AUE_CTL2_EP3_CLR ;
 int AUE_LOCK_ASSERT (struct aue_softc*,int ) ;
 scalar_t__ AUE_PAR0 ;
 int AUE_SETBIT (struct aue_softc*,scalar_t__,int ) ;
 int ETHER_ADDR_LEN ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 int aue_csr_write_1 (struct aue_softc*,scalar_t__,int) ;
 int aue_reset (struct aue_softc*) ;
 int aue_setmulti (struct usb_ether*) ;
 int aue_setpromisc (struct usb_ether*) ;
 int aue_start (struct usb_ether*) ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct aue_softc* uether_getsc (struct usb_ether*) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
aue_init(struct usb_ether *ue)
{
 struct aue_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);
 int i;

 AUE_LOCK_ASSERT(sc, MA_OWNED);




 aue_reset(sc);


 for (i = 0; i != ETHER_ADDR_LEN; i++)
  aue_csr_write_1(sc, AUE_PAR0 + i, IF_LLADDR(ifp)[i]);


 aue_setpromisc(ue);


 aue_setmulti(ue);


 aue_csr_write_1(sc, AUE_CTL0, AUE_CTL0_RXSTAT_APPEND | AUE_CTL0_RX_ENB);
 AUE_SETBIT(sc, AUE_CTL0, AUE_CTL0_TX_ENB);
 AUE_SETBIT(sc, AUE_CTL2, AUE_CTL2_EP3_CLR);

 usbd_xfer_set_stall(sc->sc_xfer[AUE_BULK_DT_WR]);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 aue_start(ue);
}
