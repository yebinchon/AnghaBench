
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct alc_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int alc_tx_tag; struct alc_txdesc* alc_txdesc; int alc_rx_tag; struct alc_rxdesc* alc_rxdesc; int * alc_rxhead; } ;
struct alc_softc {TYPE_1__ alc_cdata; scalar_t__ alc_watchdog_timer; int alc_tick_ch; int alc_flags; struct ifnet* alc_ifp; } ;
struct alc_rxdesc {int * rx_m; int rx_dmamap; } ;


 int ALC_DMA_CFG ;
 int ALC_FLAG_LINK ;
 int ALC_INTR_MASK ;
 int ALC_INTR_STATUS ;
 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_RXCHAIN_RESET (struct alc_softc*) ;
 int ALC_RX_RING_CNT ;
 int ALC_TX_RING_CNT ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct alc_softc*,int ) ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int DELAY (int) ;
 int DMA_CFG_CMB_ENB ;
 int DMA_CFG_SMB_DIS ;
 int DMA_CFG_SMB_ENB ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFM_UNKNOWN ;
 int alc_aspm (struct alc_softc*,int ,int ) ;
 int alc_stats_update (struct alc_softc*) ;
 int alc_stop_mac (struct alc_softc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
alc_stop(struct alc_softc *sc)
{
 struct ifnet *ifp;
 struct alc_txdesc *txd;
 struct alc_rxdesc *rxd;
 uint32_t reg;
 int i;

 ALC_LOCK_ASSERT(sc);



 ifp = sc->alc_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->alc_flags &= ~ALC_FLAG_LINK;
 callout_stop(&sc->alc_tick_ch);
 sc->alc_watchdog_timer = 0;
 alc_stats_update(sc);

 CSR_WRITE_4(sc, ALC_INTR_MASK, 0);
 CSR_WRITE_4(sc, ALC_INTR_STATUS, 0xFFFFFFFF);

 reg = CSR_READ_4(sc, ALC_DMA_CFG);
 reg &= ~(DMA_CFG_CMB_ENB | DMA_CFG_SMB_ENB);
 reg |= DMA_CFG_SMB_DIS;
 CSR_WRITE_4(sc, ALC_DMA_CFG, reg);
 DELAY(1000);

 alc_stop_mac(sc);

 CSR_WRITE_4(sc, ALC_INTR_STATUS, 0xFFFFFFFF);

 alc_aspm(sc, 0, IFM_UNKNOWN);

 if (sc->alc_cdata.alc_rxhead != ((void*)0))
  m_freem(sc->alc_cdata.alc_rxhead);
 ALC_RXCHAIN_RESET(sc);



 for (i = 0; i < ALC_RX_RING_CNT; i++) {
  rxd = &sc->alc_cdata.alc_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->alc_cdata.alc_rx_tag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->alc_cdata.alc_rx_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }
 for (i = 0; i < ALC_TX_RING_CNT; i++) {
  txd = &sc->alc_cdata.alc_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->alc_cdata.alc_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->alc_cdata.alc_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
 }
}
