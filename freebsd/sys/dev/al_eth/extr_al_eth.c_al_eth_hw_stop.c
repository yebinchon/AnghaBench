
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int flags; int hal_adapter; } ;


 int AL_ETH_FLAG_RESET_REQUESTED ;
 int DELAY (int) ;
 int al_eth_adapter_stop (int *) ;
 int al_eth_flow_ctrl_disable (struct al_eth_adapter*) ;
 int al_eth_mac_stop (int *) ;

__attribute__((used)) static int
al_eth_hw_stop(struct al_eth_adapter *adapter)
{

 al_eth_mac_stop(&adapter->hal_adapter);






 DELAY(10);

 al_eth_adapter_stop(&adapter->hal_adapter);

 adapter->flags |= AL_ETH_FLAG_RESET_REQUESTED;


 al_eth_flow_ctrl_disable(adapter);

 return (0);
}
