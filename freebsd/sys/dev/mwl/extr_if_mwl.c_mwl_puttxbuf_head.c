
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_txq {int nfree; int free; } ;
struct mwl_txbuf {int * bf_node; int * bf_m; } ;


 int MWL_TXQ_LOCK (struct mwl_txq*) ;
 int MWL_TXQ_UNLOCK (struct mwl_txq*) ;
 int STAILQ_INSERT_HEAD (int *,struct mwl_txbuf*,int ) ;
 int bf_list ;

__attribute__((used)) static void
mwl_puttxbuf_head(struct mwl_txq *txq, struct mwl_txbuf *bf)
{
 bf->bf_m = ((void*)0);
 bf->bf_node = ((void*)0);
 MWL_TXQ_LOCK(txq);
 STAILQ_INSERT_HEAD(&txq->free, bf, bf_list);
 txq->nfree++;
 MWL_TXQ_UNLOCK(txq);
}
