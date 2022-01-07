
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring {int tail; int mbuf_sz; } ;
struct ixl_vsi {int num_tx_queues; int num_rx_queues; int hw; int ctx; struct ixl_rx_queue* rx_queues; struct ixl_tx_queue* tx_queues; } ;
struct ixl_tx_queue {int dummy; } ;
struct ixl_rx_queue {struct rx_ring rxr; } ;


 int iflib_get_rx_mbuf_sz (int ) ;
 int ixl_init_tx_ring (struct ixl_vsi*,struct ixl_tx_queue*) ;
 int wr32 (int ,int ,int ) ;

__attribute__((used)) static void
iavf_init_queues(struct ixl_vsi *vsi)
{
 struct ixl_tx_queue *tx_que = vsi->tx_queues;
 struct ixl_rx_queue *rx_que = vsi->rx_queues;
 struct rx_ring *rxr;

 for (int i = 0; i < vsi->num_tx_queues; i++, tx_que++)
  ixl_init_tx_ring(vsi, tx_que);

 for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++) {
  rxr = &rx_que->rxr;

  rxr->mbuf_sz = iflib_get_rx_mbuf_sz(vsi->ctx);

  wr32(vsi->hw, rxr->tail, 0);
 }
}
