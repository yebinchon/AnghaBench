
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_txq {int dummy; } ;
struct ath_tid {int hwq_depth; } ;
struct ath_softc {int dummy; } ;
struct ath_node {struct ath_tid* an_tid; } ;
struct TYPE_2__ {size_t bfs_tid; int bfs_txflags; } ;
struct ath_buf {int bf_comp; TYPE_1__ bf_state; int bf_node; } ;


 struct ath_node* ATH_NODE (int ) ;
 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;
 int HAL_TXDESC_CLRDMASK ;
 int ath_tx_calc_duration (struct ath_softc*,struct ath_buf*) ;
 int ath_tx_calc_protection (struct ath_softc*,struct ath_buf*) ;
 int ath_tx_do_ratelookup (struct ath_softc*,struct ath_buf*) ;
 int ath_tx_handoff (struct ath_softc*,struct ath_txq*,struct ath_buf*) ;
 int ath_tx_normal_comp ;
 int ath_tx_rate_fill_rcflags (struct ath_softc*,struct ath_buf*) ;
 int ath_tx_set_rtscts (struct ath_softc*,struct ath_buf*) ;
 int ath_tx_setds (struct ath_softc*,struct ath_buf*) ;

__attribute__((used)) static void
ath_tx_xmit_normal(struct ath_softc *sc, struct ath_txq *txq,
    struct ath_buf *bf)
{
 struct ath_node *an = ATH_NODE(bf->bf_node);
 struct ath_tid *tid = &an->an_tid[bf->bf_state.bfs_tid];

 ATH_TX_LOCK_ASSERT(sc);
 bf->bf_state.bfs_txflags |= HAL_TXDESC_CLRDMASK;


 ath_tx_do_ratelookup(sc, bf);
 ath_tx_calc_duration(sc, bf);
 ath_tx_calc_protection(sc, bf);
 ath_tx_set_rtscts(sc, bf);
 ath_tx_rate_fill_rcflags(sc, bf);
 ath_tx_setds(sc, bf);


 tid->hwq_depth++;


 bf->bf_comp = ath_tx_normal_comp;


 ath_tx_handoff(sc, txq, bf);
}
