
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int flow_ctrl_supported; } ;
struct al_eth_adapter {TYPE_1__ link_config; } ;


 int AL_ETH_FLOW_CTRL_RX_PAUSE ;
 int AL_ETH_FLOW_CTRL_TX_PAUSE ;

__attribute__((used)) static inline void
al_eth_flow_ctrl_init(struct al_eth_adapter *adapter)
{
 uint8_t default_flow_ctrl;

 default_flow_ctrl = AL_ETH_FLOW_CTRL_TX_PAUSE;
 default_flow_ctrl |= AL_ETH_FLOW_CTRL_RX_PAUSE;

 adapter->link_config.flow_ctrl_supported = default_flow_ctrl;
}
