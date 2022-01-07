
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_SUCCESS ;
 int ixgbe_get_copper_link_capabilities_generic (struct ixgbe_hw*,int *,int*) ;

s32 ixgbe_get_link_capabilities_X540(struct ixgbe_hw *hw,
         ixgbe_link_speed *speed,
         bool *autoneg)
{
 ixgbe_get_copper_link_capabilities_generic(hw, speed, autoneg);

 return IXGBE_SUCCESS;
}
