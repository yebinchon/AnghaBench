
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ,int ) ;int (* stop_adapter ) (struct ixgbe_hw*) ;int (* reset_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_3__ {int addr; TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ mac; void* adapter_stopped; } ;
struct adapter {void* link_up; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;


 void* FALSE ;
 int INIT_DEBUGOUT (char*) ;
 int IXGBE_RAH_AV ;
 struct adapter* iflib_get_softc (int ) ;
 int ixv_if_disable_intr (int ) ;
 int ixv_if_update_admin_status (int ) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*,int ,int ,int ,int ) ;

__attribute__((used)) static void
ixv_if_stop(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;

 INIT_DEBUGOUT("ixv_stop: begin\n");

 ixv_if_disable_intr(ctx);

 hw->mac.ops.reset_hw(hw);
 adapter->hw.adapter_stopped = FALSE;
 hw->mac.ops.stop_adapter(hw);


 adapter->link_up = FALSE;
 ixv_if_update_admin_status(ctx);


 hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);
}
