
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_eth_adapter {int num_tx_queues; TYPE_2__* tx_ring; } ;
struct TYPE_3__ {scalar_t__ desc_base; } ;
struct TYPE_4__ {TYPE_1__ q_params; } ;


 int al_eth_free_tx_resources (struct al_eth_adapter*,int) ;

__attribute__((used)) static void
al_eth_free_all_tx_resources(struct al_eth_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++)
  if (adapter->tx_ring[i].q_params.desc_base)
   al_eth_free_tx_resources(adapter, i);
}
