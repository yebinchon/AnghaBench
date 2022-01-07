
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct mii_data {struct ifmedia mii_media; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;
struct dc_softc {int dc_flags; int dc_cachesize; scalar_t__ dc_txthresh; scalar_t__ dc_type; int dc_link; int dc_wdog_ch; scalar_t__ dc_wdog_timer; int dc_stat_ch; int dc_dev; int dc_miibus; struct ifnet* dc_ifp; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_21143_NWAY ;
 int DC_BURSTLEN_16LONG ;
 int DC_BURSTLEN_USECA ;
 int DC_BUSCTL ;
 int DC_BUSCTL_ARBITRATION ;
 int DC_BUSCTL_MRLE ;
 int DC_BUSCTL_MRME ;
 int DC_CACHEALIGN_16LONG ;
 int DC_CACHEALIGN_32LONG ;
 int DC_CACHEALIGN_8LONG ;
 int DC_CACHEALIGN_NONE ;
 int DC_CLRBIT (struct dc_softc*,int ,int) ;
 int DC_FRAMESDISCARDED ;
 int DC_IMR ;
 int DC_INTRS ;
 int DC_ISR ;
 scalar_t__ DC_IS_ASIX (struct dc_softc*) ;
 scalar_t__ DC_IS_DAVICOM (struct dc_softc*) ;
 scalar_t__ DC_IS_INTEL (struct dc_softc*) ;
 scalar_t__ DC_IS_MACRONIX (struct dc_softc*) ;
 scalar_t__ DC_IS_PNICII (struct dc_softc*) ;
 scalar_t__ DC_IS_ULI (struct dc_softc*) ;
 scalar_t__ DC_IS_XIRCOM (struct dc_softc*) ;
 int DC_LOCK_ASSERT (struct dc_softc*) ;
 int DC_MX_MAGICPACKET ;
 int DC_MX_MAGIC_98713 ;
 int DC_MX_MAGIC_98715 ;
 int DC_NETCFG ;
 int DC_NETCFG_NO_RXCRC ;
 int DC_NETCFG_RX_ON ;
 int DC_NETCFG_STORENFWD ;
 int DC_NETCFG_TX_BACKOFF ;
 int DC_NETCFG_TX_ON ;
 int DC_NETCFG_TX_THRESH ;
 int DC_RXADDR ;
 int DC_RXDESC (struct dc_softc*,int ) ;
 int DC_RXSTART ;
 int DC_SETBIT (struct dc_softc*,int ,int) ;
 int DC_SIAGP ;
 int DC_SIAGP_INT1_EN ;
 int DC_SIAGP_MD_GP0_OUTPUT ;
 int DC_SIAGP_MD_GP2_OUTPUT ;
 int DC_SIAGP_WRITE_EN ;
 int DC_TULIP_LEDS ;
 int DC_TXADDR ;
 int DC_TXDESC (struct dc_softc*,int ) ;
 int DC_TXPOLL_1 ;
 scalar_t__ DC_TXTHRESH_MAX ;
 int DC_TXTHRESH_MIN ;
 int DC_TX_POLL ;
 int DC_TX_STORENFWD ;
 scalar_t__ DC_TYPE_98713 ;
 int DC_WATCHDOG ;
 int DC_WDOG_ACTIVITY ;
 int DC_WDOG_CTLWREN ;
 int DC_WDOG_HOSTUNJAB ;
 int DC_WDOG_JABBERCLK ;
 int DC_WDOG_LINK ;
 int DELAY (int) ;
 scalar_t__ ENOBUFS ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 scalar_t__ IFM_HPNA_1 ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int callout_reset (int *,int,int ,struct dc_softc*) ;
 int dc_apply_fixup (struct dc_softc*,int ) ;
 int dc_ifmedia_upd_locked (struct dc_softc*) ;
 scalar_t__ dc_list_rx_init (struct dc_softc*) ;
 int dc_list_tx_init (struct dc_softc*) ;
 int dc_reset (struct dc_softc*) ;
 int dc_setfilt (struct dc_softc*) ;
 int dc_stop (struct dc_softc*) ;
 int dc_tick ;
 int dc_watchdog ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;

__attribute__((used)) static void
dc_init_locked(struct dc_softc *sc)
{
 struct ifnet *ifp = sc->dc_ifp;
 struct mii_data *mii;
 struct ifmedia *ifm;

 DC_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;

 mii = device_get_softc(sc->dc_miibus);




 dc_stop(sc);
 dc_reset(sc);
 if (DC_IS_INTEL(sc)) {
  ifm = &mii->mii_media;
  dc_apply_fixup(sc, ifm->ifm_media);
 }




 if (DC_IS_ASIX(sc) || DC_IS_DAVICOM(sc) || DC_IS_ULI(sc))
  CSR_WRITE_4(sc, DC_BUSCTL, 0);
 else
  CSR_WRITE_4(sc, DC_BUSCTL, DC_BUSCTL_MRME | DC_BUSCTL_MRLE);



 if (DC_IS_INTEL(sc))
  DC_SETBIT(sc, DC_BUSCTL, DC_BUSCTL_ARBITRATION);
 if (DC_IS_DAVICOM(sc) || DC_IS_INTEL(sc)) {
  DC_SETBIT(sc, DC_BUSCTL, DC_BURSTLEN_USECA);
 } else {
  DC_SETBIT(sc, DC_BUSCTL, DC_BURSTLEN_16LONG);
 }
 if (sc->dc_flags & DC_TX_POLL)
  DC_SETBIT(sc, DC_BUSCTL, DC_TXPOLL_1);
 switch(sc->dc_cachesize) {
 case 32:
  DC_SETBIT(sc, DC_BUSCTL, DC_CACHEALIGN_32LONG);
  break;
 case 16:
  DC_SETBIT(sc, DC_BUSCTL, DC_CACHEALIGN_16LONG);
  break;
 case 8:
  DC_SETBIT(sc, DC_BUSCTL, DC_CACHEALIGN_8LONG);
  break;
 case 0:
 default:
  DC_SETBIT(sc, DC_BUSCTL, DC_CACHEALIGN_NONE);
  break;
 }

 if (sc->dc_flags & DC_TX_STORENFWD)
  DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_STORENFWD);
 else {
  if (sc->dc_txthresh > DC_TXTHRESH_MAX) {
   DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_STORENFWD);
  } else {
   DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_STORENFWD);
   DC_SETBIT(sc, DC_NETCFG, sc->dc_txthresh);
  }
 }

 DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_NO_RXCRC);
 DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_TX_BACKOFF);

 if (DC_IS_MACRONIX(sc) || DC_IS_PNICII(sc)) {
  DC_CLRBIT(sc, DC_MX_MAGICPACKET, 0xFFFF0000);
  if (sc->dc_type == DC_TYPE_98713)
   DC_SETBIT(sc, DC_MX_MAGICPACKET, DC_MX_MAGIC_98713);
  else
   DC_SETBIT(sc, DC_MX_MAGICPACKET, DC_MX_MAGIC_98715);
 }

 if (DC_IS_XIRCOM(sc)) {




  CSR_WRITE_4(sc, DC_SIAGP, DC_SIAGP_WRITE_EN | DC_SIAGP_INT1_EN |
      DC_SIAGP_MD_GP2_OUTPUT | DC_SIAGP_MD_GP0_OUTPUT);
  DELAY(10);
  CSR_WRITE_4(sc, DC_SIAGP, DC_SIAGP_INT1_EN |
      DC_SIAGP_MD_GP2_OUTPUT | DC_SIAGP_MD_GP0_OUTPUT);
  DELAY(10);
 }

 DC_CLRBIT(sc, DC_NETCFG, DC_NETCFG_TX_THRESH);
 DC_SETBIT(sc, DC_NETCFG, DC_TXTHRESH_MIN);


 if (dc_list_rx_init(sc) == ENOBUFS) {
  device_printf(sc->dc_dev,
      "initialization failed: no memory for rx buffers\n");
  dc_stop(sc);
  return;
 }




 dc_list_tx_init(sc);




 CSR_WRITE_4(sc, DC_RXADDR, DC_RXDESC(sc, 0));
 CSR_WRITE_4(sc, DC_TXADDR, DC_TXDESC(sc, 0));
 CSR_WRITE_4(sc, DC_IMR, DC_INTRS);
 CSR_WRITE_4(sc, DC_ISR, 0xFFFFFFFF);


 if (DC_IS_ULI(sc))
  CSR_WRITE_4(sc, DC_WATCHDOG, DC_WDOG_JABBERCLK |
      DC_WDOG_HOSTUNJAB);


 DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_TX_ON);






 if (sc->dc_flags & DC_TULIP_LEDS) {
  CSR_WRITE_4(sc, DC_WATCHDOG,
      DC_WDOG_CTLWREN | DC_WDOG_LINK | DC_WDOG_ACTIVITY);
  CSR_WRITE_4(sc, DC_WATCHDOG, 0);
 }







 dc_setfilt(sc);


 DC_SETBIT(sc, DC_NETCFG, DC_NETCFG_RX_ON);
 CSR_WRITE_4(sc, DC_RXSTART, 0xFFFFFFFF);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 dc_ifmedia_upd_locked(sc);


 CSR_READ_4(sc, DC_FRAMESDISCARDED);


 if (IFM_SUBTYPE(mii->mii_media.ifm_media) == IFM_HPNA_1)
  sc->dc_link = 1;
 else {
  if (sc->dc_flags & DC_21143_NWAY)
   callout_reset(&sc->dc_stat_ch, hz/10, dc_tick, sc);
  else
   callout_reset(&sc->dc_stat_ch, hz, dc_tick, sc);
 }

 sc->dc_wdog_timer = 0;
 callout_reset(&sc->dc_wdog_ch, hz, dc_watchdog, sc);
}
