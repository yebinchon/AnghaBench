
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
struct ath_softc {void* sc_lastdatarix; void* sc_txrix; } ;
struct TYPE_4__ {int bfs_try0; void* bfs_txrate0; TYPE_2__* bfs_rc; scalar_t__ bfs_ismrr; int bfs_pktlen; int bfs_shpream; int bfs_doratelookup; } ;
struct ath_buf {TYPE_1__ bf_state; int bf_node; } ;
struct TYPE_5__ {int tries; void* ratecode; void* rix; } ;


 int ATH_NODE (int ) ;
 int ATH_NODE_LOCK (int ) ;
 int ATH_NODE_UNLOCK (int ) ;
 int ATH_TXMAXTRY ;
 int ath_rate_findrate (struct ath_softc*,int ,int ,int ,void**,int*,void**) ;
 int ath_rate_getxtxrates (struct ath_softc*,int ,void*,TYPE_2__*) ;
 int bzero (TYPE_2__*,int) ;

__attribute__((used)) static void
ath_tx_do_ratelookup(struct ath_softc *sc, struct ath_buf *bf)
{
 uint8_t rate, rix;
 int try0;

 if (! bf->bf_state.bfs_doratelookup)
  return;


 bzero(bf->bf_state.bfs_rc, sizeof(bf->bf_state.bfs_rc));

 ATH_NODE_LOCK(ATH_NODE(bf->bf_node));
 ath_rate_findrate(sc, ATH_NODE(bf->bf_node), bf->bf_state.bfs_shpream,
     bf->bf_state.bfs_pktlen, &rix, &try0, &rate);


 bf->bf_state.bfs_rc[0].rix = rix;
 bf->bf_state.bfs_rc[0].ratecode = rate;
 bf->bf_state.bfs_rc[0].tries = try0;

 if (bf->bf_state.bfs_ismrr && try0 != ATH_TXMAXTRY)
  ath_rate_getxtxrates(sc, ATH_NODE(bf->bf_node), rix,
      bf->bf_state.bfs_rc);
 ATH_NODE_UNLOCK(ATH_NODE(bf->bf_node));

 sc->sc_txrix = rix;
 sc->sc_lastdatarix = rix;
 bf->bf_state.bfs_try0 = try0;
 bf->bf_state.bfs_txrate0 = rate;
}
