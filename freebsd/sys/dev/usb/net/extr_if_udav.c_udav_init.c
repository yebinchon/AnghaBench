
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int * sc_xfer; int sc_ue; } ;
struct ifnet {int if_drv_flags; } ;


 int ETHER_ADDR_LEN ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 size_t UDAV_BULK_DT_WR ;
 int UDAV_CLRBIT (struct udav_softc*,int ,int) ;
 int UDAV_GPCR ;
 int UDAV_GPCR_GEP_CNTL0 ;
 int UDAV_GPR ;
 int UDAV_GPR_GEPIO0 ;
 int UDAV_LOCK_ASSERT (struct udav_softc*,int ) ;
 int UDAV_NCR ;
 int UDAV_NCR_LBK0 ;
 int UDAV_NCR_LBK1 ;
 int UDAV_PAR ;
 int UDAV_RCR ;
 int UDAV_RCR_DIS_CRC ;
 int UDAV_RCR_DIS_LONG ;
 int UDAV_RCR_RXEN ;
 int UDAV_SETBIT (struct udav_softc*,int ,int) ;
 int udav_csr_write (struct udav_softc*,int ,int ,int ) ;
 int udav_setpromisc (struct usb_ether*) ;
 int udav_start (struct usb_ether*) ;
 int udav_stop (struct usb_ether*) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
udav_init(struct usb_ether *ue)
{
 struct udav_softc *sc = ue->ue_sc;
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);

 UDAV_LOCK_ASSERT(sc, MA_OWNED);




 udav_stop(ue);


 udav_csr_write(sc, UDAV_PAR, IF_LLADDR(ifp), ETHER_ADDR_LEN);




 UDAV_CLRBIT(sc, UDAV_NCR, UDAV_NCR_LBK0 | UDAV_NCR_LBK1);


 UDAV_SETBIT(sc, UDAV_RCR, UDAV_RCR_DIS_LONG | UDAV_RCR_DIS_CRC);


 udav_setpromisc(ue);


 UDAV_SETBIT(sc, UDAV_RCR, UDAV_RCR_RXEN);


 UDAV_SETBIT(sc, UDAV_GPCR, UDAV_GPCR_GEP_CNTL0);
 UDAV_CLRBIT(sc, UDAV_GPR, UDAV_GPR_GEPIO0);

 usbd_xfer_set_stall(sc->sc_xfer[UDAV_BULK_DT_WR]);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 udav_start(ue);
}
