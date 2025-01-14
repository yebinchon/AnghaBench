
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct stge_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_6__ {int stge_tx_cons; scalar_t__ stge_tx_cnt; int stge_tx_ring_map; int stge_tx_ring_tag; int stge_txbusyq; int stge_txfreeq; int stge_tx_tag; } ;
struct TYPE_5__ {TYPE_1__* stge_tx_ring; } ;
struct stge_softc {TYPE_3__ sc_cdata; scalar_t__ sc_watchdog_timer; TYPE_2__ sc_rdata; struct ifnet* sc_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_4__ {int tfd_control; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFF_DRV_OACTIVE ;
 struct stge_txdesc* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct stge_txdesc*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int STGE_TX_RING_CNT ;
 int TFD_TFDDone ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int le64toh (int ) ;
 int m_freem (int *) ;
 int tx_q ;

__attribute__((used)) static void
stge_txeof(struct stge_softc *sc)
{
 struct ifnet *ifp;
 struct stge_txdesc *txd;
 uint64_t control;
 int cons;

 STGE_LOCK_ASSERT(sc);

 ifp = sc->sc_ifp;

 txd = STAILQ_FIRST(&sc->sc_cdata.stge_txbusyq);
 if (txd == ((void*)0))
  return;
 bus_dmamap_sync(sc->sc_cdata.stge_tx_ring_tag,
     sc->sc_cdata.stge_tx_ring_map, BUS_DMASYNC_POSTREAD);





 for (cons = sc->sc_cdata.stge_tx_cons;;
     cons = (cons + 1) % STGE_TX_RING_CNT) {
  if (sc->sc_cdata.stge_tx_cnt <= 0)
   break;
  control = le64toh(sc->sc_rdata.stge_tx_ring[cons].tfd_control);
  if ((control & TFD_TFDDone) == 0)
   break;
  sc->sc_cdata.stge_tx_cnt--;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  bus_dmamap_sync(sc->sc_cdata.stge_tx_tag, txd->tx_dmamap,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->sc_cdata.stge_tx_tag, txd->tx_dmamap);


  m_freem(txd->tx_m);
  txd->tx_m = ((void*)0);
  STAILQ_REMOVE_HEAD(&sc->sc_cdata.stge_txbusyq, tx_q);
  STAILQ_INSERT_TAIL(&sc->sc_cdata.stge_txfreeq, txd, tx_q);
  txd = STAILQ_FIRST(&sc->sc_cdata.stge_txbusyq);
 }
 sc->sc_cdata.stge_tx_cons = cons;
 if (sc->sc_cdata.stge_tx_cnt == 0)
  sc->sc_watchdog_timer = 0;

        bus_dmamap_sync(sc->sc_cdata.stge_tx_ring_tag,
     sc->sc_cdata.stge_tx_ring_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
