
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGFUNC (char*) ;
 int FALSE ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_LINK_STATUS ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_SPEED_STATUS ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_STATUS ;
 int IXGBE_SUCCESS ;
 int TRUE ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 int usec_delay (int) ;

s32 ixgbe_check_phy_link_tnx(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
        bool *link_up)
{
 s32 status = IXGBE_SUCCESS;
 u32 time_out;
 u32 max_time_out = 10;
 u16 phy_link = 0;
 u16 phy_speed = 0;
 u16 phy_data = 0;

 DEBUGFUNC("ixgbe_check_phy_link_tnx");


 *link_up = FALSE;
 *speed = IXGBE_LINK_SPEED_10GB_FULL;






 for (time_out = 0; time_out < max_time_out; time_out++) {
  usec_delay(10);
  status = hw->phy.ops.read_reg(hw,
     IXGBE_MDIO_VENDOR_SPECIFIC_1_STATUS,
     IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
     &phy_data);
  phy_link = phy_data & IXGBE_MDIO_VENDOR_SPECIFIC_1_LINK_STATUS;
  phy_speed = phy_data &
     IXGBE_MDIO_VENDOR_SPECIFIC_1_SPEED_STATUS;
  if (phy_link == IXGBE_MDIO_VENDOR_SPECIFIC_1_LINK_STATUS) {
   *link_up = TRUE;
   if (phy_speed ==
       IXGBE_MDIO_VENDOR_SPECIFIC_1_SPEED_STATUS)
    *speed = IXGBE_LINK_SPEED_1GB_FULL;
   break;
  }
 }

 return status;
}
