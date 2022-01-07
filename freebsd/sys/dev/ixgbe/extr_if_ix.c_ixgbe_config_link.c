
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ (* setup_link ) (struct ixgbe_hw*,scalar_t__,int ) ;scalar_t__ (* get_link_capabilities ) (struct ixgbe_hw*,scalar_t__*,int*) ;scalar_t__ check_link; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg_advertised; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct adapter {int link_up; int link_speed; int task_requests; struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;


 int FALSE ;
 int IXGBE_REQUEST_TASK_MOD ;
 int iflib_admin_intr_deferred (int ) ;
 struct adapter* iflib_get_softc (int ) ;
 scalar_t__ ixgbe_check_link (struct ixgbe_hw*,int *,int *,int ) ;
 int ixgbe_is_sfp (struct ixgbe_hw*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,scalar_t__*,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,scalar_t__,int ) ;

__attribute__((used)) static void
ixgbe_config_link(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 autoneg, err = 0;
 bool sfp, negotiate;

 sfp = ixgbe_is_sfp(hw);

 if (sfp) {
  adapter->task_requests |= IXGBE_REQUEST_TASK_MOD;
  iflib_admin_intr_deferred(ctx);
 } else {
  if (hw->mac.ops.check_link)
   err = ixgbe_check_link(hw, &adapter->link_speed,
       &adapter->link_up, FALSE);
  if (err)
   return;
  autoneg = hw->phy.autoneg_advertised;
  if ((!autoneg) && (hw->mac.ops.get_link_capabilities))
   err = hw->mac.ops.get_link_capabilities(hw, &autoneg,
       &negotiate);
  if (err)
   return;
  if (hw->mac.ops.setup_link)
   err = hw->mac.ops.setup_link(hw, autoneg,
       adapter->link_up);
 }
}
