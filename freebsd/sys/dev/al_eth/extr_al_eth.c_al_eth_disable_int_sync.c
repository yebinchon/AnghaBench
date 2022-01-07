
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_eth_adapter {scalar_t__ board_type; scalar_t__ internal_pcie_base; } ;


 scalar_t__ ALPINE_FPGA_NIC ;
 scalar_t__ ALPINE_NIC ;
 int AL_DIS_FORWARD_INTR ;
 int AL_REG_OFFSET_FORWARD_INTR ;
 int al_eth_forward_int_config (int *,int ) ;
 int al_eth_interrupts_mask (struct al_eth_adapter*) ;

__attribute__((used)) static void
al_eth_disable_int_sync(struct al_eth_adapter *adapter)
{


 if ((adapter->board_type == ALPINE_FPGA_NIC) ||
     (adapter->board_type == ALPINE_NIC)) {
  al_eth_forward_int_config((uint32_t*)adapter->internal_pcie_base +
      AL_REG_OFFSET_FORWARD_INTR, AL_DIS_FORWARD_INTR);
 }


 al_eth_interrupts_mask(adapter);
}
