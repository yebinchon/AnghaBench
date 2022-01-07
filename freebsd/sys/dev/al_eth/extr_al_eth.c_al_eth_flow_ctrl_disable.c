
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flow_ctrl_active; } ;
struct al_eth_adapter {TYPE_1__ link_config; } ;


 int al_eth_flow_ctrl_config (struct al_eth_adapter*) ;

__attribute__((used)) static void
al_eth_flow_ctrl_disable(struct al_eth_adapter *adapter)
{

 adapter->link_config.flow_ctrl_active = 0;
 al_eth_flow_ctrl_config(adapter);
}
