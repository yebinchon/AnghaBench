
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_tid {int dummy; } ;
struct ath_softc {int dummy; } ;
struct ath_node {struct ath_tid* an_tid; } ;
struct TYPE_2__ {scalar_t__ bfs_dobaw; scalar_t__ bfs_addedbaw; } ;
struct ath_buf {struct ath_buf* bf_next; int bf_comp; TYPE_1__ bf_state; } ;
typedef int ath_bufhead ;


 int ATH_TID_REMOVE (struct ath_tid*,struct ath_buf*,int ) ;
 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;
 int TAILQ_INSERT_TAIL (int *,struct ath_buf*,int ) ;
 int ath_tx_normal_comp ;
 int ath_tx_update_baw (struct ath_softc*,struct ath_node*,struct ath_tid*,struct ath_buf*) ;
 int bf_list ;

__attribute__((used)) static void
ath_tx_tid_cleanup_frame(struct ath_softc *sc, struct ath_node *an,
    int tid, struct ath_buf *bf_head, ath_bufhead *bf_cq)
{
 struct ath_tid *atid = &an->an_tid[tid];
 struct ath_buf *bf, *bf_next;

 ATH_TX_LOCK_ASSERT(sc);




 ATH_TID_REMOVE(atid, bf_head, bf_list);




 bf = bf_head;
 while (bf != ((void*)0)) {
  bf_next = bf->bf_next;
  if (bf->bf_state.bfs_addedbaw) {
   ath_tx_update_baw(sc, an, atid, bf);
   bf->bf_state.bfs_dobaw = 0;
  }




  bf->bf_comp = ath_tx_normal_comp;
  bf->bf_next = ((void*)0);




  TAILQ_INSERT_TAIL(bf_cq, bf, bf_list);




  bf = bf_next;
 }
}
