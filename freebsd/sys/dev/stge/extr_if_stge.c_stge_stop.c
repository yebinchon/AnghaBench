
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct stge_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int stge_tx_tag; struct stge_txdesc* stge_txdesc; int stge_rx_tag; struct stge_rxdesc* stge_rxdesc; } ;
struct stge_softc {scalar_t__ sc_link; struct ifnet* sc_ifp; TYPE_1__ sc_cdata; scalar_t__ sc_watchdog_timer; int sc_tick_ch; } ;
struct stge_rxdesc {int * rx_m; int rx_dmamap; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct stge_softc*,int ) ;
 int CSR_WRITE_2 (struct stge_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MC_MASK ;
 int MC_StatisticsDisable ;
 int STGE_IntEnable ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_MACCtrl ;
 int STGE_RFDListPtrHi ;
 int STGE_RFDListPtrLo ;
 int STGE_RX_RING_CNT ;
 int STGE_TFDListPtrHi ;
 int STGE_TFDListPtrLo ;
 int STGE_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int m_freem (int *) ;
 int stge_dma_wait (struct stge_softc*) ;
 int stge_stop_rx (struct stge_softc*) ;
 int stge_stop_tx (struct stge_softc*) ;

__attribute__((used)) static void
stge_stop(struct stge_softc *sc)
{
 struct ifnet *ifp;
 struct stge_txdesc *txd;
 struct stge_rxdesc *rxd;
 uint32_t v;
 int i;

 STGE_LOCK_ASSERT(sc);



 callout_stop(&sc->sc_tick_ch);
 sc->sc_watchdog_timer = 0;




 CSR_WRITE_2(sc, STGE_IntEnable, 0);




 stge_stop_rx(sc);
 stge_stop_tx(sc);
 v = CSR_READ_4(sc, STGE_MACCtrl) & MC_MASK;
 v |= MC_StatisticsDisable;
 CSR_WRITE_4(sc, STGE_MACCtrl, v);




 stge_dma_wait(sc);
 CSR_WRITE_4(sc, STGE_TFDListPtrHi, 0);
 CSR_WRITE_4(sc, STGE_TFDListPtrLo, 0);
 CSR_WRITE_4(sc, STGE_RFDListPtrHi, 0);
 CSR_WRITE_4(sc, STGE_RFDListPtrLo, 0);




 for (i = 0; i < STGE_RX_RING_CNT; i++) {
  rxd = &sc->sc_cdata.stge_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->sc_cdata.stge_rx_tag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->sc_cdata.stge_rx_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
        }
 for (i = 0; i < STGE_TX_RING_CNT; i++) {
  txd = &sc->sc_cdata.stge_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->sc_cdata.stge_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->sc_cdata.stge_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
        }




 ifp = sc->sc_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->sc_link = 0;
}
