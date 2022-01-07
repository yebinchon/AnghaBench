
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_mac_stats {int dummy; } ;
struct al_eth_adapter {scalar_t__ up; int hal_adapter; struct al_eth_mac_stats mac_stats; } ;


 int al_eth_mac_stats_get (int *,struct al_eth_mac_stats*) ;

__attribute__((used)) static void*
al_eth_update_stats(struct al_eth_adapter *adapter)
{
 struct al_eth_mac_stats *mac_stats = &adapter->mac_stats;

 if (adapter->up == 0)
  return (((void*)0));

 al_eth_mac_stats_get(&adapter->hal_adapter, mac_stats);

 return (((void*)0));
}
