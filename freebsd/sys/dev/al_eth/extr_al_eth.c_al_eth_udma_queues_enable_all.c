
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int num_tx_queues; int num_rx_queues; } ;


 int UDMA_RX ;
 int UDMA_TX ;
 int al_eth_udma_queue_enable (struct al_eth_adapter*,int ,int) ;

__attribute__((used)) static int
al_eth_udma_queues_enable_all(struct al_eth_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  al_eth_udma_queue_enable(adapter, UDMA_TX, i);

 for (i = 0; i < adapter->num_rx_queues; i++)
  al_eth_udma_queue_enable(adapter, UDMA_RX, i);

 return (0);
}
