
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_data {int mii_media_status; int mii_media_active; } ;
struct jme_txdesc {scalar_t__ tx_ndesc; int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {scalar_t__ jme_tx_cnt; scalar_t__ jme_rx_cons; int jme_tx_tag; struct jme_txdesc* jme_txdesc; int * jme_rxhead; } ;
struct jme_softc {int jme_flags; int jme_rxcsr; int jme_txcsr; int jme_tq; int jme_tick_ch; scalar_t__ jme_morework; TYPE_1__ jme_cdata; int jme_int_task; scalar_t__ jme_watchdog_timer; struct ifnet* jme_ifp; int jme_miibus; } ;
struct ifnet {int if_drv_flags; } ;
typedef int bus_addr_t ;


 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_4 (struct jme_softc*,int ) ;
 int CSR_WRITE_4 (struct jme_softc*,int ,int) ;
 int GHC_TX_MAC_CLK_DIS ;
 int GPREG1_RX_MAC_CLK_DIS ;
 int IFCOUNTER_OERRORS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;



 int IFM_AVALID ;
 int IFM_SUBTYPE (int ) ;
 int JME_ADDR_HI (int ) ;
 int JME_ADDR_LO (int ) ;
 int JME_FLAG_FASTETH ;
 int JME_FLAG_LINK ;
 int JME_FLAG_RXCLK ;
 int JME_FLAG_TXCLK ;
 int JME_GHC ;
 int JME_GPREG1 ;
 int JME_INTRS ;
 int JME_INTR_MASK_CLR ;
 int JME_INTR_MASK_SET ;
 int JME_LOCK (struct jme_softc*) ;
 int JME_RXCHAIN_RESET (struct jme_softc*) ;
 int JME_RXCSR ;
 int JME_RXDBA_HI ;
 int JME_RXDBA_LO ;
 int JME_RX_RING_ADDR (struct jme_softc*,int ) ;
 int JME_TXCSR ;
 int JME_TXDBA_HI ;
 int JME_TXDBA_LO ;
 int JME_TX_RING_ADDR (struct jme_softc*,int ) ;
 int JME_TX_RING_CNT ;
 int JME_UNLOCK (struct jme_softc*) ;
 int RXCSR_RXQ_START ;
 int RXCSR_RX_ENB ;
 int TXCSR_TX_ENB ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_reset (int *,int ,int ,struct jme_softc*) ;
 int callout_stop (int *) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int jme_init_ssb (struct jme_softc*) ;
 int jme_init_tx_ring (struct jme_softc*) ;
 int jme_mac_config (struct jme_softc*) ;
 int jme_stats_clear (struct jme_softc*) ;
 int jme_stop_rx (struct jme_softc*) ;
 int jme_stop_tx (struct jme_softc*) ;
 int jme_tick ;
 int jme_txeof (struct jme_softc*) ;
 int m_freem (int *) ;
 int taskqueue_block (int ) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_unblock (int ) ;

__attribute__((used)) static void
jme_link_task(void *arg, int pending)
{
 struct jme_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;
 struct jme_txdesc *txd;
 bus_addr_t paddr;
 int i;

 sc = (struct jme_softc *)arg;

 JME_LOCK(sc);
 mii = device_get_softc(sc->jme_miibus);
 ifp = sc->jme_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
  JME_UNLOCK(sc);
  return;
 }

 sc->jme_flags &= ~JME_FLAG_LINK;
 if ((mii->mii_media_status & IFM_AVALID) != 0) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->jme_flags |= JME_FLAG_LINK;
   break;
  case 130:
   if ((sc->jme_flags & JME_FLAG_FASTETH) != 0)
    break;
   sc->jme_flags |= JME_FLAG_LINK;
   break;
  default:
   break;
  }
 }
 taskqueue_block(sc->jme_tq);

 CSR_WRITE_4(sc, JME_INTR_MASK_CLR, JME_INTRS);
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 callout_stop(&sc->jme_tick_ch);
 sc->jme_watchdog_timer = 0;


 jme_stop_rx(sc);
 jme_stop_tx(sc);


 JME_UNLOCK(sc);
 taskqueue_drain(sc->jme_tq, &sc->jme_int_task);
 JME_LOCK(sc);

 if (sc->jme_cdata.jme_rxhead != ((void*)0))
  m_freem(sc->jme_cdata.jme_rxhead);
 JME_RXCHAIN_RESET(sc);
 jme_txeof(sc);
 if (sc->jme_cdata.jme_tx_cnt != 0) {

  for (i = 0; i < JME_TX_RING_CNT; i++) {
   txd = &sc->jme_cdata.jme_txdesc[i];
   if (txd->tx_m != ((void*)0)) {
    bus_dmamap_sync(
        sc->jme_cdata.jme_tx_tag,
        txd->tx_dmamap,
        BUS_DMASYNC_POSTWRITE);
    bus_dmamap_unload(
        sc->jme_cdata.jme_tx_tag,
        txd->tx_dmamap);
    m_freem(txd->tx_m);
    txd->tx_m = ((void*)0);
    txd->tx_ndesc = 0;
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   }
  }
 }





 sc->jme_cdata.jme_rx_cons = 0;
 sc->jme_morework = 0;
 jme_init_tx_ring(sc);

 jme_init_ssb(sc);


 if ((sc->jme_flags & JME_FLAG_LINK) != 0) {
  jme_mac_config(sc);
  jme_stats_clear(sc);

  CSR_WRITE_4(sc, JME_RXCSR, sc->jme_rxcsr);
  CSR_WRITE_4(sc, JME_TXCSR, sc->jme_txcsr);


  paddr = JME_TX_RING_ADDR(sc, 0);
  CSR_WRITE_4(sc, JME_TXDBA_HI, JME_ADDR_HI(paddr));
  CSR_WRITE_4(sc, JME_TXDBA_LO, JME_ADDR_LO(paddr));


  paddr = JME_RX_RING_ADDR(sc, 0);
  CSR_WRITE_4(sc, JME_RXDBA_HI, JME_ADDR_HI(paddr));
  CSR_WRITE_4(sc, JME_RXDBA_LO, JME_ADDR_LO(paddr));


  CSR_WRITE_4(sc, JME_RXCSR, sc->jme_rxcsr | RXCSR_RX_ENB |
      RXCSR_RXQ_START);
  CSR_WRITE_4(sc, JME_TXCSR, sc->jme_txcsr | TXCSR_TX_ENB);

  if ((sc->jme_flags & JME_FLAG_TXCLK) != 0)
   CSR_WRITE_4(sc, JME_GHC,
       CSR_READ_4(sc, JME_GHC) & ~GHC_TX_MAC_CLK_DIS);
  if ((sc->jme_flags & JME_FLAG_RXCLK) != 0)
   CSR_WRITE_4(sc, JME_GPREG1,
       CSR_READ_4(sc, JME_GPREG1) & ~GPREG1_RX_MAC_CLK_DIS);
 }

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 callout_reset(&sc->jme_tick_ch, hz, jme_tick, sc);

 taskqueue_unblock(sc->jme_tq);

 CSR_WRITE_4(sc, JME_INTR_MASK_SET, JME_INTRS);

 JME_UNLOCK(sc);
}
