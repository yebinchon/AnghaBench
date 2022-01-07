
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autoneg_advertised; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_10_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 int IXGBE_LINK_SPEED_5GB_FULL ;
 int IXGBE_SUCCESS ;
 int UNREFERENCED_1PARAMETER (int) ;
 int ixgbe_setup_phy_link (struct ixgbe_hw*) ;

s32 ixgbe_setup_phy_link_speed_generic(struct ixgbe_hw *hw,
           ixgbe_link_speed speed,
           bool autoneg_wait_to_complete)
{
 UNREFERENCED_1PARAMETER(autoneg_wait_to_complete);

 DEBUGFUNC("ixgbe_setup_phy_link_speed_generic");





 hw->phy.autoneg_advertised = 0;

 if (speed & IXGBE_LINK_SPEED_10GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_10GB_FULL;

 if (speed & IXGBE_LINK_SPEED_5GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_5GB_FULL;

 if (speed & IXGBE_LINK_SPEED_2_5GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_2_5GB_FULL;

 if (speed & IXGBE_LINK_SPEED_1GB_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_1GB_FULL;

 if (speed & IXGBE_LINK_SPEED_100_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_100_FULL;

 if (speed & IXGBE_LINK_SPEED_10_FULL)
  hw->phy.autoneg_advertised |= IXGBE_LINK_SPEED_10_FULL;


 ixgbe_setup_phy_link(hw);

 return IXGBE_SUCCESS;
}
