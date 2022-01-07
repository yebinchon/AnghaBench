
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ure_softc {int * sc_xfer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int MA_OWNED ;
 size_t URE_BULK_DT_WR ;
 int URE_BYTE_EN_SIX_BYTES ;
 int URE_CRWECR_CONFIG ;
 int URE_CRWECR_NORAML ;
 int URE_CR_RE ;
 int URE_CR_TE ;
 int URE_FMC_FCR_MCU_EN ;
 int URE_LOCK_ASSERT (struct ure_softc*,int ) ;
 int URE_MCU_TYPE_PLA ;
 int URE_PLA_CR ;
 int URE_PLA_CRWECR ;
 int URE_PLA_FMC ;
 int URE_PLA_IDR ;
 int URE_PLA_MISC_1 ;
 int URE_RXDY_GATED_EN ;
 struct ifnet* uether_getifp (struct usb_ether*) ;
 struct ure_softc* uether_getsc (struct usb_ether*) ;
 int ure_ifmedia_upd (struct ifnet*) ;
 int ure_read_1 (struct ure_softc*,int ,int) ;
 int ure_read_2 (struct ure_softc*,int ,int) ;
 int ure_reset (struct ure_softc*) ;
 int ure_rxfilter (struct usb_ether*) ;
 int ure_stop (struct usb_ether*) ;
 int ure_write_1 (struct ure_softc*,int ,int,int) ;
 int ure_write_2 (struct ure_softc*,int ,int,int) ;
 int ure_write_mem (struct ure_softc*,int ,int,int ,int) ;
 int usbd_xfer_set_stall (int ) ;

__attribute__((used)) static void
ure_init(struct usb_ether *ue)
{
 struct ure_softc *sc = uether_getsc(ue);
 struct ifnet *ifp = uether_getifp(ue);

 URE_LOCK_ASSERT(sc, MA_OWNED);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;


 ure_stop(ue);

 ure_reset(sc);


 ure_write_1(sc, URE_PLA_CRWECR, URE_MCU_TYPE_PLA, URE_CRWECR_CONFIG);
 ure_write_mem(sc, URE_PLA_IDR, URE_MCU_TYPE_PLA | URE_BYTE_EN_SIX_BYTES,
     IF_LLADDR(ifp), 8);
 ure_write_1(sc, URE_PLA_CRWECR, URE_MCU_TYPE_PLA, URE_CRWECR_NORAML);


 ure_write_2(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA,
     ure_read_2(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA) &
     ~URE_FMC_FCR_MCU_EN);
 ure_write_2(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA,
     ure_read_2(sc, URE_PLA_FMC, URE_MCU_TYPE_PLA) |
     URE_FMC_FCR_MCU_EN);


 ure_write_1(sc, URE_PLA_CR, URE_MCU_TYPE_PLA,
     ure_read_1(sc, URE_PLA_CR, URE_MCU_TYPE_PLA) | URE_CR_RE |
     URE_CR_TE);

 ure_write_2(sc, URE_PLA_MISC_1, URE_MCU_TYPE_PLA,
     ure_read_2(sc, URE_PLA_MISC_1, URE_MCU_TYPE_PLA) &
     ~URE_RXDY_GATED_EN);


 ure_rxfilter(ue);

 usbd_xfer_set_stall(sc->sc_xfer[URE_BULK_DT_WR]);


 ifp->if_drv_flags |= IFF_DRV_RUNNING;


 ure_ifmedia_upd(ifp);
}
