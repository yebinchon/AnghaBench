
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int physaddr; } ;
struct TYPE_5__ {int physaddr; } ;
struct TYPE_6__ {int jphysaddr; } ;
struct nfe_softc {int nfe_framesize; int nfe_flags; int rxtxctl; int mii_phyaddr; int nfe_stat_ch; scalar_t__ nfe_link; TYPE_1__ txq; TYPE_2__ rxq; TYPE_3__ jrxq; int nfe_dev; int nfe_miibus; int nfe_ifp; } ;
struct mii_data {int dummy; } ;
typedef int if_t ;


 int DELAY (int) ;
 int ETHER_HDR_LEN ;
 int IFCAP_POLLING ;
 int IFCAP_RXCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MCLBYTES ;
 int NFE_40BIT_ADDR ;
 int NFE_ADDR_HI (int ) ;
 int NFE_ADDR_LO (int ) ;
 int NFE_CORRECT_MACADDR ;
 int NFE_IMTIMER ;
 int NFE_IM_DEFAULT ;
 int NFE_JUMBO_SUP ;
 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int NFE_MAC_ADDR_INORDER ;
 int NFE_PHY_STATUS ;
 int NFE_PWR_STATE ;
 int NFE_PWR_VALID ;
 int NFE_PWR_WAKEUP ;
 int NFE_R1_MAGIC_10_100 ;
 int NFE_R2_MAGIC ;
 int NFE_R4_MAGIC ;
 int NFE_R6_MAGIC ;
 int NFE_READ (struct nfe_softc*,int ) ;
 int NFE_RING_SIZE ;
 int NFE_RXBUFSZ ;
 int NFE_RXTX_BIT1 ;
 int NFE_RXTX_BIT2 ;
 int NFE_RXTX_CTL ;
 int NFE_RXTX_RESET ;
 int NFE_RXTX_RXCSUM ;
 int NFE_RXTX_V2MAGIC ;
 int NFE_RXTX_V3MAGIC ;
 int NFE_RXTX_VTAG_INSERT ;
 int NFE_RXTX_VTAG_STRIP ;
 int NFE_RX_CTL ;
 int NFE_RX_HEADERS ;
 int NFE_RX_RING_ADDR_HI ;
 int NFE_RX_RING_ADDR_LO ;
 int NFE_RX_RING_COUNT ;
 int NFE_RX_START ;
 int NFE_SETUP_R1 ;
 int NFE_SETUP_R2 ;
 int NFE_SETUP_R4 ;
 int NFE_SETUP_R6 ;
 int NFE_STATUS ;
 int NFE_STATUS_MAGIC ;
 int NFE_TX_CTL ;
 int NFE_TX_FLOW_CTRL ;
 int NFE_TX_PAUSE_FRAME ;
 int NFE_TX_PAUSE_FRAME_DISABLE ;
 int NFE_TX_RING_ADDR_HI ;
 int NFE_TX_RING_ADDR_LO ;
 int NFE_TX_RING_COUNT ;
 int NFE_TX_START ;
 int NFE_TX_UNK ;
 int NFE_VTAG_CTL ;
 int NFE_VTAG_ENABLE ;
 int NFE_WOL_CTL ;
 int NFE_WRITE (struct nfe_softc*,int ,int) ;
 int callout_reset (int *,int ,int ,struct nfe_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int if_getcapenable (int ) ;
 int if_getdrvflags (int ) ;
 int if_getlladdr (int ) ;
 int if_getmtu (int ) ;
 int if_setdrvflagbits (int ,int,int ) ;
 int mii_mediachg (struct mii_data*) ;
 int nfe_disable_intr (struct nfe_softc*) ;
 int nfe_enable_intr (struct nfe_softc*) ;
 int nfe_init_jrx_ring (struct nfe_softc*,TYPE_3__*) ;
 int nfe_init_rx_ring (struct nfe_softc*,TYPE_2__*) ;
 int nfe_init_tx_ring (struct nfe_softc*,TYPE_1__*) ;
 int nfe_set_intr (struct nfe_softc*) ;
 int nfe_set_macaddr (struct nfe_softc*,int ) ;
 int nfe_setmulti (struct nfe_softc*) ;
 int nfe_stats_clear (struct nfe_softc*) ;
 int nfe_stop (int ) ;
 int nfe_tick ;

__attribute__((used)) static void
nfe_init_locked(void *xsc)
{
 struct nfe_softc *sc = xsc;
 if_t ifp = sc->nfe_ifp;
 struct mii_data *mii;
 uint32_t val;
 int error;

 NFE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->nfe_miibus);

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
  return;

 nfe_stop(ifp);

 sc->nfe_framesize = if_getmtu(ifp) + NFE_RX_HEADERS;

 nfe_init_tx_ring(sc, &sc->txq);
 if (sc->nfe_framesize > (MCLBYTES - ETHER_HDR_LEN))
  error = nfe_init_jrx_ring(sc, &sc->jrxq);
 else
  error = nfe_init_rx_ring(sc, &sc->rxq);
 if (error != 0) {
  device_printf(sc->nfe_dev,
      "initialization failed: no memory for rx buffers\n");
  nfe_stop(ifp);
  return;
 }

 val = 0;
 if ((sc->nfe_flags & NFE_CORRECT_MACADDR) != 0)
  val |= NFE_MAC_ADDR_INORDER;
 NFE_WRITE(sc, NFE_TX_UNK, val);
 NFE_WRITE(sc, NFE_STATUS, 0);

 if ((sc->nfe_flags & NFE_TX_FLOW_CTRL) != 0)
  NFE_WRITE(sc, NFE_TX_PAUSE_FRAME, NFE_TX_PAUSE_FRAME_DISABLE);

 sc->rxtxctl = NFE_RXTX_BIT2;
 if (sc->nfe_flags & NFE_40BIT_ADDR)
  sc->rxtxctl |= NFE_RXTX_V3MAGIC;
 else if (sc->nfe_flags & NFE_JUMBO_SUP)
  sc->rxtxctl |= NFE_RXTX_V2MAGIC;

 if ((if_getcapenable(ifp) & IFCAP_RXCSUM) != 0)
  sc->rxtxctl |= NFE_RXTX_RXCSUM;
 if ((if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) != 0)
  sc->rxtxctl |= NFE_RXTX_VTAG_INSERT | NFE_RXTX_VTAG_STRIP;

 NFE_WRITE(sc, NFE_RXTX_CTL, NFE_RXTX_RESET | sc->rxtxctl);
 DELAY(10);
 NFE_WRITE(sc, NFE_RXTX_CTL, sc->rxtxctl);

 if ((if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) != 0)
  NFE_WRITE(sc, NFE_VTAG_CTL, NFE_VTAG_ENABLE);
 else
  NFE_WRITE(sc, NFE_VTAG_CTL, 0);

 NFE_WRITE(sc, NFE_SETUP_R6, 0);


 nfe_set_macaddr(sc, if_getlladdr(ifp));


 if (sc->nfe_framesize > MCLBYTES - ETHER_HDR_LEN) {
  NFE_WRITE(sc, NFE_RX_RING_ADDR_HI,
      NFE_ADDR_HI(sc->jrxq.jphysaddr));
  NFE_WRITE(sc, NFE_RX_RING_ADDR_LO,
      NFE_ADDR_LO(sc->jrxq.jphysaddr));
 } else {
  NFE_WRITE(sc, NFE_RX_RING_ADDR_HI,
      NFE_ADDR_HI(sc->rxq.physaddr));
  NFE_WRITE(sc, NFE_RX_RING_ADDR_LO,
      NFE_ADDR_LO(sc->rxq.physaddr));
 }
 NFE_WRITE(sc, NFE_TX_RING_ADDR_HI, NFE_ADDR_HI(sc->txq.physaddr));
 NFE_WRITE(sc, NFE_TX_RING_ADDR_LO, NFE_ADDR_LO(sc->txq.physaddr));

 NFE_WRITE(sc, NFE_RING_SIZE,
     (NFE_RX_RING_COUNT - 1) << 16 |
     (NFE_TX_RING_COUNT - 1));

 NFE_WRITE(sc, NFE_RXBUFSZ, sc->nfe_framesize);


 val = NFE_READ(sc, NFE_PWR_STATE);
 if ((val & NFE_PWR_WAKEUP) == 0)
  NFE_WRITE(sc, NFE_PWR_STATE, val | NFE_PWR_WAKEUP);
 DELAY(10);
 val = NFE_READ(sc, NFE_PWR_STATE);
 NFE_WRITE(sc, NFE_PWR_STATE, val | NFE_PWR_VALID);



 NFE_WRITE(sc, NFE_IMTIMER, NFE_IM_DEFAULT);





 NFE_WRITE(sc, NFE_SETUP_R1, NFE_R1_MAGIC_10_100);
 NFE_WRITE(sc, NFE_SETUP_R2, NFE_R2_MAGIC);
 NFE_WRITE(sc, NFE_SETUP_R6, NFE_R6_MAGIC);


 NFE_WRITE(sc, NFE_STATUS, sc->mii_phyaddr << 24 | NFE_STATUS_MAGIC);

 NFE_WRITE(sc, NFE_SETUP_R4, NFE_R4_MAGIC);

 NFE_WRITE(sc, NFE_WOL_CTL, 0);

 sc->rxtxctl &= ~NFE_RXTX_BIT2;
 NFE_WRITE(sc, NFE_RXTX_CTL, sc->rxtxctl);
 DELAY(10);
 NFE_WRITE(sc, NFE_RXTX_CTL, NFE_RXTX_BIT1 | sc->rxtxctl);


 nfe_setmulti(sc);


 NFE_WRITE(sc, NFE_RX_CTL, NFE_RX_START);


 NFE_WRITE(sc, NFE_TX_CTL, NFE_TX_START);

 NFE_WRITE(sc, NFE_PHY_STATUS, 0xf);


 nfe_stats_clear(sc);






 nfe_set_intr(sc);
 nfe_enable_intr(sc);

 if_setdrvflagbits(ifp, IFF_DRV_RUNNING, 0);
 if_setdrvflagbits(ifp, 0, IFF_DRV_OACTIVE);

 sc->nfe_link = 0;
 mii_mediachg(mii);

 callout_reset(&sc->nfe_stat_ch, hz, nfe_tick, sc);
}
