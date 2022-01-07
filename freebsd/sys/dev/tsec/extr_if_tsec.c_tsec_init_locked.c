
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tsec_softc {int tsec_tx_raddr; int tsec_rx_raddr; int tsec_callout; scalar_t__ tsec_watchdog; int tsec_if_flags; scalar_t__ is_etsec; int tsec_rx_dmap; int tsec_rx_dtag; TYPE_1__* rx_data; int tsec_tx_dmap; int tsec_tx_dtag; int tsec_mii; struct ifnet* tsec_ifp; struct tsec_desc* tsec_rx_vaddr; struct tsec_desc* tsec_tx_vaddr; } ;
struct tsec_desc {int flags; scalar_t__ length; scalar_t__ bufptr; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_flags; int if_mtu; } ;
struct TYPE_2__ {scalar_t__ paddr; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MCLBYTES ;
 int TSEC_ATTR_RBDSEN ;
 int TSEC_ATTR_RDSEN ;
 int TSEC_ECNTRL_R100M ;
 int TSEC_ECNTRL_SGMIIM ;
 int TSEC_ECNTRL_STEN ;
 int TSEC_ECNTRL_TBIM ;
 int TSEC_FIFO_PAUSE_CTRL_EN ;
 int TSEC_GLOBAL_LOCK_ASSERT (struct tsec_softc*) ;
 int TSEC_MACCFG1_RX_EN ;
 int TSEC_MACCFG1_TX_EN ;
 int TSEC_MACCFG2_FULLDUPLEX ;
 int TSEC_MACCFG2_GMII ;
 int TSEC_MACCFG2_PADCRC ;
 int TSEC_MACCFG2_PRECNT ;
 int TSEC_MIIMCFG_CLKDIV28 ;
 int TSEC_MIIMCFG_RESETMGMT ;
 int TSEC_MIIMIND_BUSY ;
 int TSEC_MIN_FRAME_SIZE ;
 int TSEC_PHY_LOCK (struct tsec_softc*) ;
 int TSEC_PHY_UNLOCK (struct tsec_softc*) ;
 int TSEC_PHY_WRITE (struct tsec_softc*,int ,int ) ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_ATTR ;
 int TSEC_REG_ATTRELI ;
 int TSEC_REG_ECNTRL ;
 int TSEC_REG_FIFO_PAUSE_CTRL ;
 int TSEC_REG_GADDR0 ;
 int TSEC_REG_GADDR1 ;
 int TSEC_REG_GADDR2 ;
 int TSEC_REG_GADDR3 ;
 int TSEC_REG_GADDR4 ;
 int TSEC_REG_GADDR5 ;
 int TSEC_REG_GADDR6 ;
 int TSEC_REG_GADDR7 ;
 int TSEC_REG_IADDR0 ;
 int TSEC_REG_IADDR1 ;
 int TSEC_REG_IADDR2 ;
 int TSEC_REG_IADDR3 ;
 int TSEC_REG_IADDR4 ;
 int TSEC_REG_IADDR5 ;
 int TSEC_REG_IADDR6 ;
 int TSEC_REG_IADDR7 ;
 int TSEC_REG_ID2 ;
 int TSEC_REG_IEVENT ;
 int TSEC_REG_MACCFG1 ;
 int TSEC_REG_MACCFG2 ;
 int TSEC_REG_MIIMCFG ;
 int TSEC_REG_MINFLR ;
 int TSEC_REG_MON_CAM1 ;
 int TSEC_REG_MON_CAM2 ;
 int TSEC_REG_MON_TLCL ;
 int TSEC_REG_MON_TMCL ;
 int TSEC_REG_MON_TNCL ;
 int TSEC_REG_MON_TSCL ;
 int TSEC_REG_MON_TXCL ;
 int TSEC_REG_MRBLR ;
 int TSEC_REG_RBASE ;
 int TSEC_REG_RCTRL ;
 int TSEC_REG_TBASE ;
 int TSEC_REG_TBIPA ;
 int TSEC_RXBD_E ;
 int TSEC_RXBD_I ;
 int TSEC_RXBD_W ;
 int TSEC_RX_NUM_DESC ;
 int TSEC_TXBD_W ;
 int TSEC_TX_NUM_DESC ;
 int TSEC_TX_RX_COUNTERS_INIT (struct tsec_softc*) ;
 int TSEC_WRITE (struct tsec_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int callout_reset (int *,int ,int ,struct tsec_softc*) ;
 int hz ;
 int if_printf (struct ifnet*,char*) ;
 int mii_mediachg (int ) ;
 int tsec_dma_ctl (struct tsec_softc*,int) ;
 int tsec_intrs_ctl (struct tsec_softc*,int) ;
 int tsec_mii_wait (struct tsec_softc*,int ) ;
 int tsec_offload_setup (struct tsec_softc*) ;
 int tsec_reset_mac (struct tsec_softc*) ;
 int tsec_set_mac_address (struct tsec_softc*) ;
 int tsec_set_mtu (struct tsec_softc*,int ) ;
 int tsec_setup_multicast (struct tsec_softc*) ;
 int tsec_stop (struct tsec_softc*) ;
 int tsec_tick ;

__attribute__((used)) static void
tsec_init_locked(struct tsec_softc *sc)
{
 struct tsec_desc *tx_desc = sc->tsec_tx_vaddr;
 struct tsec_desc *rx_desc = sc->tsec_rx_vaddr;
 struct ifnet *ifp = sc->tsec_ifp;
 uint32_t val, i;
 int timeout;

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 TSEC_GLOBAL_LOCK_ASSERT(sc);
 tsec_stop(sc);







 tsec_reset_mac(sc);


 TSEC_WRITE(sc, TSEC_REG_MACCFG2,
     TSEC_MACCFG2_FULLDUPLEX |
     TSEC_MACCFG2_PADCRC |
     TSEC_MACCFG2_GMII |
     TSEC_MACCFG2_PRECNT
 );
 i = TSEC_READ(sc, TSEC_REG_ID2);
 val = (i & 0xffff)
     ? (TSEC_ECNTRL_TBIM | TSEC_ECNTRL_SGMIIM)
     : TSEC_ECNTRL_R100M;
 TSEC_WRITE(sc, TSEC_REG_ECNTRL, TSEC_ECNTRL_STEN | val);


 tsec_set_mac_address(sc);





 TSEC_WRITE(sc, TSEC_REG_TBIPA, 5);

 TSEC_PHY_LOCK(sc);


 TSEC_PHY_WRITE(sc, TSEC_REG_MIIMCFG, TSEC_MIIMCFG_RESETMGMT);


 TSEC_PHY_WRITE(sc, TSEC_REG_MIIMCFG, TSEC_MIIMCFG_CLKDIV28);


 timeout = tsec_mii_wait(sc, TSEC_MIIMIND_BUSY);

 TSEC_PHY_UNLOCK(sc);
 if (timeout) {
  if_printf(ifp, "tsec_init_locked(): Mgmt busy timeout\n");
  return;
 }


 mii_mediachg(sc->tsec_mii);


 TSEC_WRITE(sc, TSEC_REG_IEVENT, 0xffffffff);
 tsec_intrs_ctl(sc, 1);


 TSEC_WRITE(sc, TSEC_REG_IADDR0, 0);
 TSEC_WRITE(sc, TSEC_REG_IADDR1, 0);
 TSEC_WRITE(sc, TSEC_REG_IADDR2, 0);
 TSEC_WRITE(sc, TSEC_REG_IADDR3, 0);
 TSEC_WRITE(sc, TSEC_REG_IADDR4, 0);
 TSEC_WRITE(sc, TSEC_REG_IADDR5, 0);
 TSEC_WRITE(sc, TSEC_REG_IADDR6, 0);
 TSEC_WRITE(sc, TSEC_REG_IADDR7, 0);


 TSEC_WRITE(sc, TSEC_REG_GADDR0, 0);
 TSEC_WRITE(sc, TSEC_REG_GADDR1, 0);
 TSEC_WRITE(sc, TSEC_REG_GADDR2, 0);
 TSEC_WRITE(sc, TSEC_REG_GADDR3, 0);
 TSEC_WRITE(sc, TSEC_REG_GADDR4, 0);
 TSEC_WRITE(sc, TSEC_REG_GADDR5, 0);
 TSEC_WRITE(sc, TSEC_REG_GADDR6, 0);
 TSEC_WRITE(sc, TSEC_REG_GADDR7, 0);


 TSEC_WRITE(sc, TSEC_REG_RCTRL, 0);


 tsec_dma_ctl(sc, 1);


 TSEC_WRITE(sc, TSEC_REG_FIFO_PAUSE_CTRL, TSEC_FIFO_PAUSE_CTRL_EN);





 TSEC_WRITE(sc, TSEC_REG_TBASE, sc->tsec_tx_raddr);
 TSEC_WRITE(sc, TSEC_REG_RBASE, sc->tsec_rx_raddr);

 for (i = 0; i < TSEC_TX_NUM_DESC; i++) {
  tx_desc[i].bufptr = 0;
  tx_desc[i].length = 0;
  tx_desc[i].flags = ((i == TSEC_TX_NUM_DESC - 1) ?
      TSEC_TXBD_W : 0);
 }
 bus_dmamap_sync(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

 for (i = 0; i < TSEC_RX_NUM_DESC; i++) {
  rx_desc[i].bufptr = sc->rx_data[i].paddr;
  rx_desc[i].length = 0;
  rx_desc[i].flags = TSEC_RXBD_E | TSEC_RXBD_I |
      ((i == TSEC_RX_NUM_DESC - 1) ? TSEC_RXBD_W : 0);
 }
 bus_dmamap_sync(sc->tsec_rx_dtag, sc->tsec_rx_dmap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);


 TSEC_WRITE(sc, TSEC_REG_MRBLR, MCLBYTES);


 TSEC_WRITE(sc, TSEC_REG_MINFLR, TSEC_MIN_FRAME_SIZE);
 tsec_set_mtu(sc, ifp->if_mtu);


 TSEC_WRITE(sc, TSEC_REG_ATTR, TSEC_ATTR_RDSEN | TSEC_ATTR_RBDSEN);
 TSEC_WRITE(sc, TSEC_REG_ATTRELI, 0);


 TSEC_WRITE(sc, TSEC_REG_MON_TSCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TMCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TLCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TXCL, 0);
 TSEC_WRITE(sc, TSEC_REG_MON_TNCL, 0);


 TSEC_WRITE(sc, TSEC_REG_MON_CAM1, 0xffffffff);
 TSEC_WRITE(sc, TSEC_REG_MON_CAM2, 0xffffffff);


 val = TSEC_READ(sc, TSEC_REG_MACCFG1);
 val |= (TSEC_MACCFG1_RX_EN | TSEC_MACCFG1_TX_EN);
 TSEC_WRITE(sc, TSEC_REG_MACCFG1, val);


 TSEC_TX_RX_COUNTERS_INIT(sc);


 if (sc->is_etsec)
  tsec_offload_setup(sc);


 tsec_setup_multicast(sc);


 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 sc->tsec_if_flags = ifp->if_flags;
 sc->tsec_watchdog = 0;


 callout_reset(&sc->tsec_callout, hz, tsec_tick, sc);
}
