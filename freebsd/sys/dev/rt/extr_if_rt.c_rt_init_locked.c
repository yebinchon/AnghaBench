
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct rt_softc {scalar_t__ gdma1_base; scalar_t__ pdma_glo_cfg; scalar_t__ pdma_rst_idx; scalar_t__* tx_base_ptr; scalar_t__* tx_max_cnt; scalar_t__* tx_ctx_idx; int rx_ring_count; scalar_t__* rx_base_ptr; scalar_t__* rx_max_cnt; scalar_t__* rx_calc_idx; scalar_t__ rt_chipid; scalar_t__ delay_int_cfg; scalar_t__ fe_int_status; int intr_enable_mask; scalar_t__ fe_int_enable; int periodic_ch; scalar_t__ periodic_round; TYPE_2__* rx_ring; TYPE_1__* tx_ring; int dev; int rt_miibus; struct ifnet* ifp; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_4__ {int desc_phys_addr; } ;
struct TYPE_3__ {int desc_phys_addr; } ;


 int CNT_GDM_AF ;
 int CNT_PPE_AF ;
 int DELAY (int) ;
 int FE_DMA_BT_SIZE16 ;
 int FE_RST_DRX_IDX0 ;
 int FE_RST_DTX_IDX0 ;
 int FE_RST_DTX_IDX1 ;
 int FE_RST_DTX_IDX2 ;
 int FE_RST_DTX_IDX3 ;
 int FE_RX_DMA_BUSY ;
 int FE_RX_DMA_EN ;
 int FE_TX_DMA_BUSY ;
 int FE_TX_DMA_EN ;
 int FE_TX_WB_DDONE ;
 scalar_t__ GDMA_FWD_CFG ;
 int GDM_BFRC_P_SHIFT ;
 int GDM_CRC_DROP ;
 int GDM_DST_PORT_CPU ;
 int GDM_ICS_EN ;
 int GDM_MFRC_P_SHIFT ;
 int GDM_OFRC_P_SHIFT ;
 int GDM_OTHER_DROP ;
 int GDM_STRPCRC ;
 int GDM_TCS_EN ;
 int GDM_UCS_EN ;
 int GDM_UFRC_P_SHIFT ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int INT_RX_COHERENT ;
 int INT_RX_DONE ;
 int INT_TXQ0_DONE ;
 int INT_TXQ1_DONE ;
 int INT_TXQ2_DONE ;
 int INT_TXQ3_DONE ;
 int INT_TX_COHERENT ;
 int PSE_BUF_DROP ;
 int PSE_FQ_EMPTY ;
 int PSE_P0_FC ;
 int PSE_P1_FC ;
 int PSE_P2_FC ;
 int RT5350_INT_RXQ0_DONE ;
 int RT5350_INT_RXQ1_DONE ;
 int RT5350_INT_RX_COHERENT ;
 int RT5350_INT_TXQ0_DONE ;
 int RT5350_INT_TXQ1_DONE ;
 int RT5350_INT_TXQ2_DONE ;
 int RT5350_INT_TXQ3_DONE ;
 int RT5350_INT_TX_COHERENT ;
 scalar_t__ RT_CHIPID_MT7620 ;
 scalar_t__ RT_CHIPID_MT7621 ;
 scalar_t__ RT_CHIPID_RT5350 ;
 int RT_DEBUG_ANY ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int RT_READ (struct rt_softc*,scalar_t__) ;
 int RT_SOFTC_ASSERT_LOCKED (struct rt_softc*) ;
 int RT_SOFTC_RX_RING_DATA_COUNT ;
 int RT_SOFTC_TX_RING_COUNT ;
 int RT_SOFTC_TX_RING_DESC_COUNT ;
 int RT_WRITE (struct rt_softc*,scalar_t__,int) ;
 int callout_reset (int *,int,int ,struct rt_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int rt_periodic ;
 int rt_reset_rx_ring (struct rt_softc*,TYPE_2__*) ;
 int rt_reset_tx_ring (struct rt_softc*,TYPE_1__*) ;
 int rt_stop_locked (struct rt_softc*) ;
 scalar_t__ rt_txrx_enable (struct rt_softc*) ;

__attribute__((used)) static void
rt_init_locked(void *priv)
{
 struct rt_softc *sc;
 struct ifnet *ifp;



 int i, ntries;
 uint32_t tmp;

 sc = priv;
 ifp = sc->ifp;




 RT_DPRINTF(sc, RT_DEBUG_ANY, "initializing\n");

 RT_SOFTC_ASSERT_LOCKED(sc);






 if (sc->gdma1_base != 0)
  RT_WRITE(sc, sc->gdma1_base + GDMA_FWD_CFG,
  (
  GDM_ICS_EN |
  GDM_TCS_EN |
  GDM_UCS_EN |
  GDM_STRPCRC |
  GDM_DST_PORT_CPU << GDM_UFRC_P_SHIFT |
  GDM_DST_PORT_CPU << GDM_BFRC_P_SHIFT |
  GDM_DST_PORT_CPU << GDM_MFRC_P_SHIFT |
  GDM_DST_PORT_CPU << GDM_OFRC_P_SHIFT
  ));


 RT_WRITE(sc, sc->pdma_glo_cfg, 0);
 RT_WRITE(sc, sc->pdma_rst_idx, 0xffffffff);


 for (ntries = 0; ntries < 100; ntries++) {
  tmp = RT_READ(sc, sc->pdma_glo_cfg);
  if (!(tmp & (FE_TX_DMA_BUSY | FE_RX_DMA_BUSY)))
   break;
  DELAY(1000);
 }

 if (ntries == 100) {
  device_printf(sc->dev, "timeout waiting for DMA engine\n");
  goto fail;
 }


 tmp = FE_RST_DRX_IDX0 |
  FE_RST_DTX_IDX3 |
  FE_RST_DTX_IDX2 |
  FE_RST_DTX_IDX1 |
  FE_RST_DTX_IDX0;

 RT_WRITE(sc, sc->pdma_rst_idx, tmp);


 for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++)
  rt_reset_tx_ring(sc, &sc->tx_ring[i]);

 for (i = 0; i < RT_SOFTC_TX_RING_COUNT; i++) {

  RT_WRITE(sc, sc->tx_base_ptr[i],
   sc->tx_ring[i].desc_phys_addr);
  RT_WRITE(sc, sc->tx_max_cnt[i],
   RT_SOFTC_TX_RING_DESC_COUNT);
  RT_WRITE(sc, sc->tx_ctx_idx[i], 0);
 }


 for (i = 0; i < sc->rx_ring_count; i++)
  rt_reset_rx_ring(sc, &sc->rx_ring[i]);


 for (i = 0; i < sc->rx_ring_count; i++) {
  RT_WRITE(sc, sc->rx_base_ptr[i],
   sc->rx_ring[i].desc_phys_addr);
  RT_WRITE(sc, sc->rx_max_cnt[i],
   RT_SOFTC_RX_RING_DATA_COUNT);
  RT_WRITE(sc, sc->rx_calc_idx[i],
   RT_SOFTC_RX_RING_DATA_COUNT - 1);
 }


 tmp = FE_TX_WB_DDONE | FE_DMA_BT_SIZE16 | FE_RX_DMA_EN | FE_TX_DMA_EN;
 if (sc->rt_chipid == RT_CHIPID_MT7620 ||
     sc->rt_chipid == RT_CHIPID_MT7621)
  tmp |= (1<<31);
 RT_WRITE(sc, sc->pdma_glo_cfg, tmp);


 RT_WRITE(sc, sc->delay_int_cfg, 0);


 RT_WRITE(sc, sc->fe_int_status, 0xffffffff);


 if (sc->rt_chipid == RT_CHIPID_RT5350 ||
     sc->rt_chipid == RT_CHIPID_MT7620 ||
     sc->rt_chipid == RT_CHIPID_MT7621)
   tmp = RT5350_INT_TX_COHERENT |
    RT5350_INT_RX_COHERENT |
    RT5350_INT_TXQ3_DONE |
    RT5350_INT_TXQ2_DONE |
    RT5350_INT_TXQ1_DONE |
    RT5350_INT_TXQ0_DONE |
    RT5350_INT_RXQ1_DONE |
    RT5350_INT_RXQ0_DONE;
 else
   tmp = CNT_PPE_AF |
  CNT_GDM_AF |
  PSE_P2_FC |
  GDM_CRC_DROP |
  PSE_BUF_DROP |
  GDM_OTHER_DROP |
  PSE_P1_FC |
  PSE_P0_FC |
  PSE_FQ_EMPTY |
  INT_TX_COHERENT |
  INT_RX_COHERENT |
  INT_TXQ3_DONE |
  INT_TXQ2_DONE |
  INT_TXQ1_DONE |
  INT_TXQ0_DONE |
  INT_RX_DONE;

 sc->intr_enable_mask = tmp;

 RT_WRITE(sc, sc->fe_int_enable, tmp);

 if (rt_txrx_enable(sc) != 0)
  goto fail;





 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 ifp->if_drv_flags |= IFF_DRV_RUNNING;

 sc->periodic_round = 0;

 callout_reset(&sc->periodic_ch, hz / 10, rt_periodic, sc);

 return;

fail:
 rt_stop_locked(sc);
}
