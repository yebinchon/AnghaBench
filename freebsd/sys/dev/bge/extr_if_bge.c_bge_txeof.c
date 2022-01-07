
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct bge_tx_bd {int bge_flags; } ;
struct TYPE_4__ {int ** bge_tx_chain; int * bge_tx_dmamap; int bge_tx_mtag; int bge_tx_ring_map; int bge_tx_ring_tag; } ;
struct TYPE_3__ {struct bge_tx_bd* bge_tx_ring; } ;
struct bge_softc {scalar_t__ bge_tx_saved_considx; scalar_t__ bge_txcnt; scalar_t__ bge_timer; TYPE_2__ bge_cdata; TYPE_1__ bge_ldata; int bge_ifp; } ;
typedef int if_t ;


 int BGE_INC (size_t,int ) ;
 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_TXBDFLAG_END ;
 int BGE_TX_RING_CNT ;
 int BUS_DMASYNC_POSTWRITE ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (int ,int ,int) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bge_txeof(struct bge_softc *sc, uint16_t tx_cons)
{
 struct bge_tx_bd *cur_tx;
 if_t ifp;

 BGE_LOCK_ASSERT(sc);


 if (sc->bge_tx_saved_considx == tx_cons)
  return;

 ifp = sc->bge_ifp;

 bus_dmamap_sync(sc->bge_cdata.bge_tx_ring_tag,
     sc->bge_cdata.bge_tx_ring_map, BUS_DMASYNC_POSTWRITE);




 while (sc->bge_tx_saved_considx != tx_cons) {
  uint32_t idx;

  idx = sc->bge_tx_saved_considx;
  cur_tx = &sc->bge_ldata.bge_tx_ring[idx];
  if (cur_tx->bge_flags & BGE_TXBDFLAG_END)
   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  if (sc->bge_cdata.bge_tx_chain[idx] != ((void*)0)) {
   bus_dmamap_sync(sc->bge_cdata.bge_tx_mtag,
       sc->bge_cdata.bge_tx_dmamap[idx],
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->bge_cdata.bge_tx_mtag,
       sc->bge_cdata.bge_tx_dmamap[idx]);
   m_freem(sc->bge_cdata.bge_tx_chain[idx]);
   sc->bge_cdata.bge_tx_chain[idx] = ((void*)0);
  }
  sc->bge_txcnt--;
  BGE_INC(sc->bge_tx_saved_considx, BGE_TX_RING_CNT);
 }

 if_setdrvflagbits(ifp, 0, IFF_DRV_OACTIVE);
 if (sc->bge_txcnt == 0)
  sc->bge_timer = 0;
}
