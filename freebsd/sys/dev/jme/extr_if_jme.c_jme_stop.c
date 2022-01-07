
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_txdesc {scalar_t__ tx_ndesc; int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int jme_tx_tag; struct jme_txdesc* jme_txdesc; int jme_rx_tag; struct jme_rxdesc* jme_rxdesc; int * jme_rxhead; } ;
struct jme_softc {TYPE_1__ jme_cdata; scalar_t__ jme_watchdog_timer; int jme_tick_ch; int jme_flags; struct ifnet* jme_ifp; } ;
struct jme_rxdesc {int * rx_m; int rx_dmamap; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int JME_FLAG_LINK ;
 int JME_INTRS ;
 int JME_INTR_MASK_CLR ;
 int JME_INTR_STATUS ;
 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int JME_RXCHAIN_RESET (struct jme_softc*) ;
 int JME_RX_RING_CNT ;
 int JME_SHBASE_ADDR_LO ;
 int JME_TX_RING_CNT ;
 int SHBASE_POST_ENB ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int jme_rxintr (struct jme_softc*,int) ;
 int jme_stats_save (struct jme_softc*) ;
 int jme_stats_update (struct jme_softc*) ;
 int jme_stop_rx (struct jme_softc*) ;
 int jme_stop_tx (struct jme_softc*) ;
 int jme_txeof (struct jme_softc*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
jme_stop(struct jme_softc *sc)
{
 struct ifnet *ifp;
 struct jme_txdesc *txd;
 struct jme_rxdesc *rxd;
 int i;

 JME_LOCK_ASSERT(sc);



 ifp = sc->jme_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->jme_flags &= ~JME_FLAG_LINK;
 callout_stop(&sc->jme_tick_ch);
 sc->jme_watchdog_timer = 0;




 CSR_WRITE_4(sc, JME_INTR_MASK_CLR, JME_INTRS);
 CSR_WRITE_4(sc, JME_INTR_STATUS, 0xFFFFFFFF);


 CSR_WRITE_4(sc, JME_SHBASE_ADDR_LO,
     CSR_READ_4(sc, JME_SHBASE_ADDR_LO) & ~SHBASE_POST_ENB);


 jme_stop_rx(sc);
 jme_stop_tx(sc);


 jme_rxintr(sc, JME_RX_RING_CNT);
 if (sc->jme_cdata.jme_rxhead != ((void*)0))
  m_freem(sc->jme_cdata.jme_rxhead);
 JME_RXCHAIN_RESET(sc);
 jme_txeof(sc);



 for (i = 0; i < JME_RX_RING_CNT; i++) {
  rxd = &sc->jme_cdata.jme_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->jme_cdata.jme_rx_tag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->jme_cdata.jme_rx_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
        }
 for (i = 0; i < JME_TX_RING_CNT; i++) {
  txd = &sc->jme_cdata.jme_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->jme_cdata.jme_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->jme_cdata.jme_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
   txd->tx_ndesc = 0;
  }
        }
 jme_stats_update(sc);
 jme_stats_save(sc);
}
