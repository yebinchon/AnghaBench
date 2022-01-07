
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct al_eth_adapter {int hal_adapter; } ;


 scalar_t__ AL_ETH_NUM_QUEUES ;
 int al_eth_thash_table_set (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int panic (char*) ;

__attribute__((used)) static void
al_eth_set_thash_table_entry(struct al_eth_adapter *adapter, uint8_t idx,
    uint8_t udma, uint32_t queue)
{

 if (udma != 0)
  panic("only UDMA0 is supporter");

 if (queue >= AL_ETH_NUM_QUEUES)
  panic("invalid queue number");

 al_eth_thash_table_set(&adapter->hal_adapter, idx, udma, queue);
}
