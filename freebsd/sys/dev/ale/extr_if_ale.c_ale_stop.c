
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct ale_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int ale_tx_tag; struct ale_txdesc* ale_txdesc; } ;
struct ale_softc {TYPE_1__ ale_cdata; scalar_t__ ale_watchdog_timer; int ale_tick_ch; int ale_flags; struct ifnet* ale_ifp; } ;


 int ALE_DMA_CFG ;
 int ALE_FLAG_LINK ;
 int ALE_INTR_MASK ;
 int ALE_INTR_STATUS ;
 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int ALE_RXQ_CFG ;
 int ALE_TXQ_CFG ;
 int ALE_TX_RING_CNT ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int) ;
 int DELAY (int) ;
 int DMA_CFG_RXCMB_ENB ;
 int DMA_CFG_TXCMB_ENB ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RXQ_CFG_ENB ;
 int TXQ_CFG_ENB ;
 int ale_stats_update (struct ale_softc*) ;
 int ale_stop_mac (struct ale_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
ale_stop(struct ale_softc *sc)
{
 struct ifnet *ifp;
 struct ale_txdesc *txd;
 uint32_t reg;
 int i;

 ALE_LOCK_ASSERT(sc);



 ifp = sc->ale_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->ale_flags &= ~ALE_FLAG_LINK;
 callout_stop(&sc->ale_tick_ch);
 sc->ale_watchdog_timer = 0;
 ale_stats_update(sc);

 CSR_WRITE_4(sc, ALE_INTR_MASK, 0);
 CSR_WRITE_4(sc, ALE_INTR_STATUS, 0xFFFFFFFF);

 reg = CSR_READ_4(sc, ALE_TXQ_CFG);
 reg &= ~TXQ_CFG_ENB;
 CSR_WRITE_4(sc, ALE_TXQ_CFG, reg);
 reg = CSR_READ_4(sc, ALE_RXQ_CFG);
 reg &= ~RXQ_CFG_ENB;
 CSR_WRITE_4(sc, ALE_RXQ_CFG, reg);
 reg = CSR_READ_4(sc, ALE_DMA_CFG);
 reg &= ~(DMA_CFG_TXCMB_ENB | DMA_CFG_RXCMB_ENB);
 CSR_WRITE_4(sc, ALE_DMA_CFG, reg);
 DELAY(1000);

 ale_stop_mac(sc);

 CSR_WRITE_4(sc, ALE_INTR_STATUS, 0xFFFFFFFF);




 for (i = 0; i < ALE_TX_RING_CNT; i++) {
  txd = &sc->ale_cdata.ale_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->ale_cdata.ale_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->ale_cdata.ale_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
        }
}
