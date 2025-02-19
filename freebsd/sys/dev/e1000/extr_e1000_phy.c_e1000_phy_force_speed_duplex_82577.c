
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct e1000_phy_info {scalar_t__ autoneg_wait_to_complete; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int PHY_CONTROL ;
 int PHY_FORCE_LIMIT ;
 int e1000_phy_force_speed_duplex_setup (struct e1000_hw*,int *) ;
 scalar_t__ e1000_phy_has_link_generic (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;
 int usec_delay (int) ;

s32 e1000_phy_force_speed_duplex_82577(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data;
 bool link;

 DEBUGFUNC("e1000_phy_force_speed_duplex_82577");

 ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_data);
 if (ret_val)
  return ret_val;

 e1000_phy_force_speed_duplex_setup(hw, &phy_data);

 ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_data);
 if (ret_val)
  return ret_val;

 usec_delay(1);

 if (phy->autoneg_wait_to_complete) {
  DEBUGOUT("Waiting for forced speed/duplex link on 82577 phy\n");

  ret_val = e1000_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
           100000, &link);
  if (ret_val)
   return ret_val;

  if (!link)
   DEBUGOUT("Link taking longer than expected.\n");


  ret_val = e1000_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
           100000, &link);
 }

 return ret_val;
}
