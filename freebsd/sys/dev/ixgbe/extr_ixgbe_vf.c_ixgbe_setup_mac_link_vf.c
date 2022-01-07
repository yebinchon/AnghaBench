
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_SUCCESS ;
 int UNREFERENCED_3PARAMETER (struct ixgbe_hw*,int ,int) ;

s32 ixgbe_setup_mac_link_vf(struct ixgbe_hw *hw, ixgbe_link_speed speed,
       bool autoneg_wait_to_complete)
{
 UNREFERENCED_3PARAMETER(hw, speed, autoneg_wait_to_complete);
 return IXGBE_SUCCESS;
}
