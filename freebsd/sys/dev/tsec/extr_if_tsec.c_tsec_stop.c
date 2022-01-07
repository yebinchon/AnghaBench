
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tsec_softc {size_t tx_idx_tail; size_t tx_idx_head; TYPE_1__* tx_bufmap; int tsec_tx_mtag; scalar_t__ tsec_watchdog; int tsec_callout; struct ifnet* tsec_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int mbuf; int map; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int DELAY (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int TSEC_GLOBAL_LOCK_ASSERT (struct tsec_softc*) ;
 int TSEC_MACCFG1_RX_EN ;
 int TSEC_MACCFG1_TX_EN ;
 int TSEC_READ (struct tsec_softc*,int ) ;
 int TSEC_REG_MACCFG1 ;
 int TSEC_TX_NUM_DESC ;
 int TSEC_WRITE (struct tsec_softc*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int m_freem (int ) ;
 int tsec_dma_ctl (struct tsec_softc*,int ) ;
 int tsec_intrs_ctl (struct tsec_softc*,int ) ;

__attribute__((used)) static void
tsec_stop(struct tsec_softc *sc)
{
 struct ifnet *ifp;
 uint32_t tmpval;

 TSEC_GLOBAL_LOCK_ASSERT(sc);

 ifp = sc->tsec_ifp;


 callout_stop(&sc->tsec_callout);
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->tsec_watchdog = 0;


 tsec_intrs_ctl(sc, 0);
 tsec_dma_ctl(sc, 0);


 while (sc->tx_idx_tail != sc->tx_idx_head) {
  bus_dmamap_sync(sc->tsec_tx_mtag,
      sc->tx_bufmap[sc->tx_idx_tail].map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->tsec_tx_mtag,
      sc->tx_bufmap[sc->tx_idx_tail].map);
  m_freem(sc->tx_bufmap[sc->tx_idx_tail].mbuf);
  sc->tx_idx_tail = (sc->tx_idx_tail + 1)
      & (TSEC_TX_NUM_DESC - 1);
 }


 tmpval = TSEC_READ(sc, TSEC_REG_MACCFG1);
 tmpval &= ~(TSEC_MACCFG1_RX_EN | TSEC_MACCFG1_TX_EN);
 TSEC_WRITE(sc, TSEC_REG_MACCFG1, tmpval);
 DELAY(10);
}
