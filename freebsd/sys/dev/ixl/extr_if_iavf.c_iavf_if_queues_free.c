
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_ring {struct ixl_tx_queue* tx_rsq; } ;
struct ixl_vsi {struct ixl_tx_queue* rx_queues; struct ixl_tx_queue* tx_queues; TYPE_1__* shared; int enable_head_writeback; } ;
struct ixl_tx_queue {struct tx_ring txr; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;
struct TYPE_2__ {int isc_ntxqsets; } ;


 int M_IAVF ;
 int free (struct ixl_tx_queue*,int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static void
iavf_if_queues_free(if_ctx_t ctx)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &sc->vsi;

 if (!vsi->enable_head_writeback) {
  struct ixl_tx_queue *que;
  int i = 0;

  for (i = 0, que = vsi->tx_queues; i < vsi->shared->isc_ntxqsets; i++, que++) {
   struct tx_ring *txr = &que->txr;
   if (txr->tx_rsq != ((void*)0)) {
    free(txr->tx_rsq, M_IAVF);
    txr->tx_rsq = ((void*)0);
   }
  }
 }

 if (vsi->tx_queues != ((void*)0)) {
  free(vsi->tx_queues, M_IAVF);
  vsi->tx_queues = ((void*)0);
 }
 if (vsi->rx_queues != ((void*)0)) {
  free(vsi->rx_queues, M_IAVF);
  vsi->rx_queues = ((void*)0);
 }
}
