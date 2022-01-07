
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int addr; } ;
struct ixgbe_hw {TYPE_1__ mac; void* adapter_stopped; } ;
struct adapter {struct ixgbe_hw hw; void* link_up; } ;
typedef int if_ctx_t ;


 void* FALSE ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_RAH_AV ;
 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_disable_tx_laser (struct ixgbe_hw*) ;
 int ixgbe_if_update_admin_status (int ) ;
 scalar_t__ ixgbe_mac_82599EB ;
 int ixgbe_reset_hw (struct ixgbe_hw*) ;
 int ixgbe_set_rar (struct ixgbe_hw*,int ,int ,int ,int ) ;
 int ixgbe_stop_adapter (struct ixgbe_hw*) ;
 int ixgbe_stop_mac_link_on_d3_82599 (struct ixgbe_hw*) ;

__attribute__((used)) static void
ixgbe_if_stop(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;

 INIT_DEBUGOUT("ixgbe_if_stop: begin\n");

 ixgbe_reset_hw(hw);
 hw->adapter_stopped = FALSE;
 ixgbe_stop_adapter(hw);
 if (hw->mac.type == ixgbe_mac_82599EB)
  ixgbe_stop_mac_link_on_d3_82599(hw);

 ixgbe_disable_tx_laser(hw);


 adapter->link_up = FALSE;
 ixgbe_if_update_admin_status(ctx);


 ixgbe_set_rar(&adapter->hw, 0, adapter->hw.mac.addr, 0, IXGBE_RAH_AV);

 return;
}
