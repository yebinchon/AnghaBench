
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_id; int vtntx_mtx; int * vtntx_br; int * vtntx_sg; int * vtntx_sc; } ;


 int M_DEVBUF ;
 int buf_ring_free (int *,int ) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int sglist_free (int *) ;

__attribute__((used)) static void
vtnet_destroy_txq(struct vtnet_txq *txq)
{

 txq->vtntx_sc = ((void*)0);
 txq->vtntx_id = -1;

 if (txq->vtntx_sg != ((void*)0)) {
  sglist_free(txq->vtntx_sg);
  txq->vtntx_sg = ((void*)0);
 }


 if (txq->vtntx_br != ((void*)0)) {
  buf_ring_free(txq->vtntx_br, M_DEVBUF);
  txq->vtntx_br = ((void*)0);
 }


 if (mtx_initialized(&txq->vtntx_mtx) != 0)
  mtx_destroy(&txq->vtntx_mtx);
}
