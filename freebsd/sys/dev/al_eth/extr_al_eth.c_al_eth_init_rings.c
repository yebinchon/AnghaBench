
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unit_regs {int dummy; } ;
struct al_eth_ring {int ring_id; int unmask_val; void* unmask_reg_offset; int hw_count; int sw_count; int dma_q; int netdev; struct al_eth_adapter* adapter; int dev; } ;
struct TYPE_2__ {int rx_udma; int tx_udma; } ;
struct al_eth_adapter {int num_tx_queues; int num_rx_queues; scalar_t__ udma_base; int rx_descs_count; int rx_ring_count; TYPE_1__ hal_adapter; int netdev; int dev; struct al_eth_ring* rx_ring; int tx_descs_count; int tx_ring_count; struct al_eth_ring* tx_ring; } ;


 int AL_INT_GROUP_B ;
 int AL_INT_GROUP_C ;
 int AL_UDMA_IOFIC_LEVEL_PRIMARY ;
 void* al_udma_iofic_unmask_offset_get (struct unit_regs*,int ,int ) ;
 int al_udma_q_handle_get (int *,int,int *) ;

__attribute__((used)) static void
al_eth_init_rings(struct al_eth_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  struct al_eth_ring *ring = &adapter->tx_ring[i];

  ring->ring_id = i;
  ring->dev = adapter->dev;
  ring->adapter = adapter;
  ring->netdev = adapter->netdev;
  al_udma_q_handle_get(&adapter->hal_adapter.tx_udma, i,
      &ring->dma_q);
  ring->sw_count = adapter->tx_ring_count;
  ring->hw_count = adapter->tx_descs_count;
  ring->unmask_reg_offset = al_udma_iofic_unmask_offset_get((struct unit_regs *)adapter->udma_base, AL_UDMA_IOFIC_LEVEL_PRIMARY, AL_INT_GROUP_C);
  ring->unmask_val = ~(1 << i);
 }

 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct al_eth_ring *ring = &adapter->rx_ring[i];

  ring->ring_id = i;
  ring->dev = adapter->dev;
  ring->adapter = adapter;
  ring->netdev = adapter->netdev;
  al_udma_q_handle_get(&adapter->hal_adapter.rx_udma, i, &ring->dma_q);
  ring->sw_count = adapter->rx_ring_count;
  ring->hw_count = adapter->rx_descs_count;
  ring->unmask_reg_offset = al_udma_iofic_unmask_offset_get(
      (struct unit_regs *)adapter->udma_base,
      AL_UDMA_IOFIC_LEVEL_PRIMARY, AL_INT_GROUP_B);
  ring->unmask_val = ~(1 << i);
 }
}
