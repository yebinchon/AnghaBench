
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flow_ctrl_supported; int flow_ctrl_active; } ;
struct al_eth_adapter {TYPE_1__ link_config; } ;


 int al_eth_flow_ctrl_config (struct al_eth_adapter*) ;

__attribute__((used)) static void
al_eth_flow_ctrl_enable(struct al_eth_adapter *adapter)
{





 adapter->link_config.flow_ctrl_active =
     adapter->link_config.flow_ctrl_supported;

 al_eth_flow_ctrl_config(adapter);
}
