
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_txdesc {int * tx_m; int tx_dmamap; } ;
struct sis_softc {int sis_tx_tag; struct sis_txdesc* sis_txdesc; int sis_rx_tag; struct sis_rxdesc* sis_rxdesc; int sis_flags; int sis_stat_ch; scalar_t__ sis_watchdog_timer; struct ifnet* sis_ifp; } ;
struct sis_rxdesc {int * rx_m; int rx_dmamap; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct sis_softc*,int ) ;
 int CSR_WRITE_4 (struct sis_softc*,int ,int ) ;
 int DELAY (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int SIS_CSR ;
 int SIS_CSR_RX_DISABLE ;
 int SIS_CSR_TX_DISABLE ;
 int SIS_FLAG_LINK ;
 int SIS_IER ;
 int SIS_IMR ;
 int SIS_ISR ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 int SIS_RX_LISTPTR ;
 int SIS_RX_LIST_CNT ;
 int SIS_SETBIT (struct sis_softc*,int ,int) ;
 int SIS_TX_LISTPTR ;
 int SIS_TX_LIST_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
sis_stop(struct sis_softc *sc)
{
 struct ifnet *ifp;
 struct sis_rxdesc *rxd;
 struct sis_txdesc *txd;
 int i;

 SIS_LOCK_ASSERT(sc);

 ifp = sc->sis_ifp;
 sc->sis_watchdog_timer = 0;

 callout_stop(&sc->sis_stat_ch);

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 CSR_WRITE_4(sc, SIS_IER, 0);
 CSR_WRITE_4(sc, SIS_IMR, 0);
 CSR_READ_4(sc, SIS_ISR);
 SIS_SETBIT(sc, SIS_CSR, SIS_CSR_TX_DISABLE|SIS_CSR_RX_DISABLE);
 DELAY(1000);
 CSR_WRITE_4(sc, SIS_TX_LISTPTR, 0);
 CSR_WRITE_4(sc, SIS_RX_LISTPTR, 0);

 sc->sis_flags &= ~SIS_FLAG_LINK;




 for (i = 0; i < SIS_RX_LIST_CNT; i++) {
  rxd = &sc->sis_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->sis_rx_tag, rxd->rx_dmamap,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->sis_rx_tag, rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }




 for (i = 0; i < SIS_TX_LIST_CNT; i++) {
  txd = &sc->sis_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->sis_tx_tag, txd->tx_dmamap,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->sis_tx_tag, txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
 }
}
