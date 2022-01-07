
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int stats_callout; } ;


 int al_eth_update_stats (struct al_eth_adapter*) ;
 int callout_schedule (int *,int ) ;
 int hz ;

__attribute__((used)) static void
al_tick_stats(void *arg)
{
 struct al_eth_adapter *adapter = arg;

 al_eth_update_stats(adapter);

 callout_schedule(&adapter->stats_callout, hz);
}
