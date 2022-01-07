
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* iflib_txq_t ;
typedef int if_ctx_t ;
struct TYPE_5__ {int * ifsd_m; int * ifsd_tso_map; int * ifsd_map; } ;
struct TYPE_6__ {int ift_size; int * ift_ifdi; int * ift_tso_buf_tag; int * ift_buf_tag; TYPE_1__ ift_sds; int ift_mtx; int * ift_br; int ift_ctx; } ;


 int M_IFLIB ;
 int bus_dma_tag_destroy (int *) ;
 int free (int *,int ) ;
 int iflib_txsd_destroy (int ,TYPE_2__*,int) ;
 int ifmp_ring_free (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
iflib_txq_destroy(iflib_txq_t txq)
{
 if_ctx_t ctx = txq->ift_ctx;

 for (int i = 0; i < txq->ift_size; i++)
  iflib_txsd_destroy(ctx, txq, i);

 if (txq->ift_br != ((void*)0)) {
  ifmp_ring_free(txq->ift_br);
  txq->ift_br = ((void*)0);
 }

 mtx_destroy(&txq->ift_mtx);

 if (txq->ift_sds.ifsd_map != ((void*)0)) {
  free(txq->ift_sds.ifsd_map, M_IFLIB);
  txq->ift_sds.ifsd_map = ((void*)0);
 }
 if (txq->ift_sds.ifsd_tso_map != ((void*)0)) {
  free(txq->ift_sds.ifsd_tso_map, M_IFLIB);
  txq->ift_sds.ifsd_tso_map = ((void*)0);
 }
 if (txq->ift_sds.ifsd_m != ((void*)0)) {
  free(txq->ift_sds.ifsd_m, M_IFLIB);
  txq->ift_sds.ifsd_m = ((void*)0);
 }
 if (txq->ift_buf_tag != ((void*)0)) {
  bus_dma_tag_destroy(txq->ift_buf_tag);
  txq->ift_buf_tag = ((void*)0);
 }
 if (txq->ift_tso_buf_tag != ((void*)0)) {
  bus_dma_tag_destroy(txq->ift_tso_buf_tag);
  txq->ift_tso_buf_tag = ((void*)0);
 }
 if (txq->ift_ifdi != ((void*)0)) {
  free(txq->ift_ifdi, M_IFLIB);
 }
}
