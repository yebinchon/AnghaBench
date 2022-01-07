
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct age_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int age_tx_tag; struct age_txdesc* age_txdesc; int age_rx_tag; struct age_rxdesc* age_rxdesc; int * age_rxhead; } ;
struct age_softc {TYPE_1__ age_cdata; int age_dev; scalar_t__ age_watchdog_timer; int age_tick_ch; int age_flags; struct ifnet* age_ifp; } ;
struct age_rxdesc {int * rx_m; int rx_dmamap; } ;


 int AGE_CSMB_CTRL ;
 int AGE_DMA_CFG ;
 int AGE_FLAG_LINK ;
 int AGE_IDLE_STATUS ;
 int AGE_INTR_MASK ;
 int AGE_INTR_STATUS ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_RESET_TIMEOUT ;
 int AGE_RXCHAIN_RESET (struct age_softc*) ;
 int AGE_RXQ_CFG ;
 int AGE_RX_RING_CNT ;
 int AGE_TXQ_CFG ;
 int AGE_TX_RING_CNT ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct age_softc*,int ) ;
 int CSR_WRITE_4 (struct age_softc*,int ,int) ;
 int DELAY (int) ;
 int DMA_CFG_RD_ENB ;
 int DMA_CFG_WR_ENB ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RXQ_CFG_ENB ;
 int TXQ_CFG_ENB ;
 int age_stop_rxmac (struct age_softc*) ;
 int age_stop_txmac (struct age_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
age_stop(struct age_softc *sc)
{
 struct ifnet *ifp;
 struct age_txdesc *txd;
 struct age_rxdesc *rxd;
 uint32_t reg;
 int i;

 AGE_LOCK_ASSERT(sc);



 ifp = sc->age_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->age_flags &= ~AGE_FLAG_LINK;
 callout_stop(&sc->age_tick_ch);
 sc->age_watchdog_timer = 0;




 CSR_WRITE_4(sc, AGE_INTR_MASK, 0);
 CSR_WRITE_4(sc, AGE_INTR_STATUS, 0xFFFFFFFF);

 CSR_WRITE_4(sc, AGE_CSMB_CTRL, 0);

 age_stop_rxmac(sc);
 age_stop_txmac(sc);

 CSR_WRITE_4(sc, AGE_DMA_CFG,
     CSR_READ_4(sc, AGE_DMA_CFG) & ~(DMA_CFG_RD_ENB | DMA_CFG_WR_ENB));

 CSR_WRITE_4(sc, AGE_TXQ_CFG,
     CSR_READ_4(sc, AGE_TXQ_CFG) & ~TXQ_CFG_ENB);
 CSR_WRITE_4(sc, AGE_RXQ_CFG,
     CSR_READ_4(sc, AGE_RXQ_CFG) & ~RXQ_CFG_ENB);
 for (i = AGE_RESET_TIMEOUT; i > 0; i--) {
  if ((reg = CSR_READ_4(sc, AGE_IDLE_STATUS)) == 0)
   break;
  DELAY(10);
 }
 if (i == 0)
  device_printf(sc->age_dev,
      "stopping Rx/Tx MACs timed out(0x%08x)!\n", reg);


 if (sc->age_cdata.age_rxhead != ((void*)0))
  m_freem(sc->age_cdata.age_rxhead);
 AGE_RXCHAIN_RESET(sc);



 for (i = 0; i < AGE_RX_RING_CNT; i++) {
  rxd = &sc->age_cdata.age_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->age_cdata.age_rx_tag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->age_cdata.age_rx_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
        }
 for (i = 0; i < AGE_TX_RING_CNT; i++) {
  txd = &sc->age_cdata.age_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->age_cdata.age_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->age_cdata.age_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
        }
}
