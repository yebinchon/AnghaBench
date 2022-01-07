
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct al_eth_adapter {scalar_t__ board_type; int hal_adapter; int stats_mtx; int stats_callout; scalar_t__ internal_pcie_base; TYPE_1__* netdev; } ;
struct TYPE_2__ {int if_mtu; } ;


 scalar_t__ ALPINE_FPGA_NIC ;
 scalar_t__ ALPINE_NIC ;
 int AL_EN_FORWARD_INTR ;
 int AL_REG_OFFSET_FORWARD_INTR ;
 int al_eth_change_mtu (struct al_eth_adapter*,int ) ;
 int al_eth_config_rx_fwd (struct al_eth_adapter*) ;
 int al_eth_configure_int_mode (struct al_eth_adapter*) ;
 int al_eth_flow_ctrl_enable (struct al_eth_adapter*) ;
 int al_eth_forward_int_config (int *,int ) ;
 int al_eth_interrupts_unmask (struct al_eth_adapter*) ;
 int al_eth_mac_start (int *) ;
 int al_eth_refill_all_rx_bufs (struct al_eth_adapter*) ;
 int al_eth_udma_queues_enable_all (struct al_eth_adapter*) ;
 int al_tick_stats ;
 int callout_reset (int *,int ,int ,void*) ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
al_eth_up_complete(struct al_eth_adapter *adapter)
{

 al_eth_configure_int_mode(adapter);
 al_eth_config_rx_fwd(adapter);
 al_eth_change_mtu(adapter, adapter->netdev->if_mtu);
 al_eth_udma_queues_enable_all(adapter);
 al_eth_refill_all_rx_bufs(adapter);
 al_eth_interrupts_unmask(adapter);


 if ((adapter->board_type == ALPINE_FPGA_NIC) ||
     (adapter->board_type == ALPINE_NIC)) {
  al_eth_forward_int_config((uint32_t*)adapter->internal_pcie_base +
      AL_REG_OFFSET_FORWARD_INTR, AL_EN_FORWARD_INTR);
 }

 al_eth_flow_ctrl_enable(adapter);

 mtx_lock(&adapter->stats_mtx);
 callout_reset(&adapter->stats_callout, hz, al_tick_stats, (void*)adapter);
 mtx_unlock(&adapter->stats_mtx);

 al_eth_mac_start(&adapter->hal_adapter);
}
