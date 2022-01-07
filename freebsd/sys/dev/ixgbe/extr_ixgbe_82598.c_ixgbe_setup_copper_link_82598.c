
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* setup_link_speed ) (struct ixgbe_hw*,int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int ixgbe_start_mac_link_82598 (struct ixgbe_hw*,int) ;
 int stub1 (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbe_setup_copper_link_82598(struct ixgbe_hw *hw,
      ixgbe_link_speed speed,
      bool autoneg_wait_to_complete)
{
 s32 status;

 DEBUGFUNC("ixgbe_setup_copper_link_82598");


 status = hw->phy.ops.setup_link_speed(hw, speed,
           autoneg_wait_to_complete);

 ixgbe_start_mac_link_82598(hw, autoneg_wait_to_complete);

 return status;
}
