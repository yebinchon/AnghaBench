
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_rxq {int vtnrx_id; int vtnrx_mtx; int * vtnrx_sg; int * vtnrx_sc; } ;


 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int sglist_free (int *) ;

__attribute__((used)) static void
vtnet_destroy_rxq(struct vtnet_rxq *rxq)
{

 rxq->vtnrx_sc = ((void*)0);
 rxq->vtnrx_id = -1;

 if (rxq->vtnrx_sg != ((void*)0)) {
  sglist_free(rxq->vtnrx_sg);
  rxq->vtnrx_sg = ((void*)0);
 }

 if (mtx_initialized(&rxq->vtnrx_mtx) != 0)
  mtx_destroy(&rxq->vtnrx_mtx);
}
