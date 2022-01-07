
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_tid {int dummy; } ;
struct ath_softc {int dummy; } ;
struct ath_node {int clrdmask; } ;
struct TYPE_2__ {int bfs_txflags; } ;
struct ath_buf {TYPE_1__ bf_state; int bf_node; } ;


 struct ath_node* ATH_NODE (int ) ;
 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;
 int HAL_TXDESC_CLRDMASK ;

__attribute__((used)) static void
ath_tx_update_clrdmask(struct ath_softc *sc, struct ath_tid *tid,
    struct ath_buf *bf)
{
 struct ath_node *an = ATH_NODE(bf->bf_node);

 ATH_TX_LOCK_ASSERT(sc);

 if (an->clrdmask == 1) {
  bf->bf_state.bfs_txflags |= HAL_TXDESC_CLRDMASK;
  an->clrdmask = 0;
 }
}
