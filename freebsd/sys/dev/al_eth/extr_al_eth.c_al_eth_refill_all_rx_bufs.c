
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int num_rx_queues; } ;


 scalar_t__ AL_ETH_DEFAULT_RX_DESCS ;
 int al_eth_refill_rx_bufs (struct al_eth_adapter*,int,scalar_t__) ;

__attribute__((used)) static void
al_eth_refill_all_rx_bufs(struct al_eth_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  al_eth_refill_rx_bufs(adapter, i, AL_ETH_DEFAULT_RX_DESCS - 1);
}
