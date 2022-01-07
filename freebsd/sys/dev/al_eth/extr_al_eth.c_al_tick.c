
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int wd_callout; int mii; } ;


 int callout_schedule (int *,int ) ;
 int hz ;
 int mii_tick (int ) ;

__attribute__((used)) static void
al_tick(void *arg)
{
 struct al_eth_adapter *adapter = arg;

 mii_tick(adapter->mii);


 callout_schedule(&adapter->wd_callout, hz);
}
