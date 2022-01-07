
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {struct ixl_tx_queue* tx_rsq; } ;
struct ixl_vsi {int num_tx_queues; struct ixl_tx_queue* rx_queues; struct ixl_tx_queue* tx_queues; int enable_head_writeback; } ;
struct ixl_tx_queue {struct tx_ring txr; } ;
struct ixl_pf {struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;


 int M_IXL ;
 int free (struct ixl_tx_queue*,int ) ;
 struct ixl_pf* iflib_get_softc (int ) ;

__attribute__((used)) static void
ixl_if_queues_free(if_ctx_t ctx)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;

 if (!vsi->enable_head_writeback) {
  struct ixl_tx_queue *que;
  int i = 0;

  for (i = 0, que = vsi->tx_queues; i < vsi->num_tx_queues; i++, que++) {
   struct tx_ring *txr = &que->txr;
   if (txr->tx_rsq != ((void*)0)) {
    free(txr->tx_rsq, M_IXL);
    txr->tx_rsq = ((void*)0);
   }
  }
 }

 if (vsi->tx_queues != ((void*)0)) {
  free(vsi->tx_queues, M_IXL);
  vsi->tx_queues = ((void*)0);
 }
 if (vsi->rx_queues != ((void*)0)) {
  free(vsi->rx_queues, M_IXL);
  vsi->rx_queues = ((void*)0);
 }
}
