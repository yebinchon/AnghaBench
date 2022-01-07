
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct al_eth_flow_control_params {int obay_enable; int gen_enable; int** prio_q_map; int quanta_th; int quanta; int rx_fifo_th_low; int rx_fifo_th_high; int type; } ;
struct TYPE_2__ {int flow_ctrl_active; } ;
struct al_eth_adapter {int hal_adapter; struct al_eth_flow_control_params flow_ctrl_params; TYPE_1__ link_config; } ;


 int AL_ETH_FLOW_CONTROL_TYPE_LINK_PAUSE ;
 int AL_ETH_FLOW_CTRL_QUANTA ;
 int AL_ETH_FLOW_CTRL_QUANTA_TH ;
 int AL_ETH_FLOW_CTRL_RX_FIFO_TH_HIGH ;
 int AL_ETH_FLOW_CTRL_RX_FIFO_TH_LOW ;
 int AL_ETH_FLOW_CTRL_RX_PAUSE ;
 int AL_ETH_FLOW_CTRL_TX_PAUSE ;
 int AL_ETH_FWD_PRIO_TABLE_NUM ;
 int al_eth_flow_control_config (int *,struct al_eth_flow_control_params*) ;

__attribute__((used)) static int
al_eth_flow_ctrl_config(struct al_eth_adapter *adapter)
{
 struct al_eth_flow_control_params *flow_ctrl_params;
 uint8_t active = adapter->link_config.flow_ctrl_active;
 int i;

 flow_ctrl_params = &adapter->flow_ctrl_params;

 flow_ctrl_params->type = AL_ETH_FLOW_CONTROL_TYPE_LINK_PAUSE;
 flow_ctrl_params->obay_enable =
     ((active & AL_ETH_FLOW_CTRL_RX_PAUSE) != 0);
 flow_ctrl_params->gen_enable =
     ((active & AL_ETH_FLOW_CTRL_TX_PAUSE) != 0);

 flow_ctrl_params->rx_fifo_th_high = AL_ETH_FLOW_CTRL_RX_FIFO_TH_HIGH;
 flow_ctrl_params->rx_fifo_th_low = AL_ETH_FLOW_CTRL_RX_FIFO_TH_LOW;
 flow_ctrl_params->quanta = AL_ETH_FLOW_CTRL_QUANTA;
 flow_ctrl_params->quanta_th = AL_ETH_FLOW_CTRL_QUANTA_TH;


 for (i = 0; i < AL_ETH_FWD_PRIO_TABLE_NUM; i++)
  flow_ctrl_params->prio_q_map[0][i] = 1 << (i >> 1);

 al_eth_flow_control_config(&adapter->hal_adapter, flow_ctrl_params);

 return (0);
}
