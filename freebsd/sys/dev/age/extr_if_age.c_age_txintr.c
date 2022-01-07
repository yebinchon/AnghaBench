
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct age_txdesc {int * tx_m; int tx_dmamap; TYPE_1__* tx_desc; } ;
struct TYPE_4__ {int age_tx_cons; scalar_t__ age_tx_cnt; int age_tx_ring_map; int age_tx_ring_tag; int age_tx_tag; struct age_txdesc* age_txdesc; } ;
struct age_softc {TYPE_2__ age_cdata; scalar_t__ age_watchdog_timer; struct ifnet* age_ifp; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ len; scalar_t__ addr; } ;


 int AGE_DESC_INC (int,int ) ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_TX_RING_CNT ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int IFF_DRV_OACTIVE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
age_txintr(struct age_softc *sc, int tpd_cons)
{
 struct ifnet *ifp;
 struct age_txdesc *txd;
 int cons, prog;

 AGE_LOCK_ASSERT(sc);

 ifp = sc->age_ifp;

 bus_dmamap_sync(sc->age_cdata.age_tx_ring_tag,
     sc->age_cdata.age_tx_ring_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);





 cons = sc->age_cdata.age_tx_cons;
 for (prog = 0; cons != tpd_cons; AGE_DESC_INC(cons, AGE_TX_RING_CNT)) {
  if (sc->age_cdata.age_tx_cnt <= 0)
   break;
  prog++;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  sc->age_cdata.age_tx_cnt--;
  txd = &sc->age_cdata.age_txdesc[cons];




  txd->tx_desc->addr = 0;
  txd->tx_desc->len = 0;
  txd->tx_desc->flags = 0;

  if (txd->tx_m == ((void*)0))
   continue;

  bus_dmamap_sync(sc->age_cdata.age_tx_tag, txd->tx_dmamap,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->age_cdata.age_tx_tag, txd->tx_dmamap);
  m_freem(txd->tx_m);
  txd->tx_m = ((void*)0);
 }

 if (prog > 0) {
  sc->age_cdata.age_tx_cons = cons;





  if (sc->age_cdata.age_tx_cnt == 0)
   sc->age_watchdog_timer = 0;
  bus_dmamap_sync(sc->age_cdata.age_tx_ring_tag,
      sc->age_cdata.age_tx_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
}
