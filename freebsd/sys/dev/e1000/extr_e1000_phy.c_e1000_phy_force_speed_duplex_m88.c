
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;scalar_t__ (* commit ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {scalar_t__ type; int id; TYPE_1__ ops; scalar_t__ autoneg_wait_to_complete; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 scalar_t__ E1000_SUCCESS ;
 int FALSE ;


 int M88E1000_EPSCR_TX_CLK_25 ;
 int M88E1000_EXT_PHY_SPEC_CTRL ;
 int M88E1000_PHY_PAGE_SELECT ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PSCR_ASSERT_CRS_ON_TX ;
 int M88E1000_PSCR_AUTO_X_MODE ;




 int PHY_CONTROL ;
 int PHY_FORCE_LIMIT ;
 int TRUE ;
 int e1000_phy_force_speed_duplex_setup (struct e1000_hw*,int*) ;
 scalar_t__ e1000_phy_has_link_generic (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ e1000_phy_i210 ;
 scalar_t__ e1000_phy_m88 ;
 scalar_t__ e1000_phy_reset_dsp_generic (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub10 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub5 (struct e1000_hw*) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int*) ;

s32 e1000_phy_force_speed_duplex_m88(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data;
 bool link;

 DEBUGFUNC("e1000_phy_force_speed_duplex_m88");


 if (phy->type != e1000_phy_i210) {



  ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL,
         &phy_data);
  if (ret_val)
   return ret_val;

  phy_data &= ~M88E1000_PSCR_AUTO_X_MODE;
  ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL,
          phy_data);
  if (ret_val)
   return ret_val;

  DEBUGOUT1("M88E1000 PSCR: %X\n", phy_data);
 }

 ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_data);
 if (ret_val)
  return ret_val;

 e1000_phy_force_speed_duplex_setup(hw, &phy_data);

 ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_data);
 if (ret_val)
  return ret_val;


 ret_val = hw->phy.ops.commit(hw);
 if (ret_val)
  return ret_val;

 if (phy->autoneg_wait_to_complete) {
  DEBUGOUT("Waiting for forced speed/duplex link on M88 phy.\n");

  ret_val = e1000_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
           100000, &link);
  if (ret_val)
   return ret_val;

  if (!link) {
   bool reset_dsp = TRUE;

   switch (hw->phy.id) {
   case 132:
   case 130:
   case 131:
   case 128:
   case 129:
   case 133:
    reset_dsp = FALSE;
    break;
   default:
    if (hw->phy.type != e1000_phy_m88)
     reset_dsp = FALSE;
    break;
   }

   if (!reset_dsp) {
    DEBUGOUT("Link taking longer than expected.\n");
   } else {



    ret_val = phy->ops.write_reg(hw,
      M88E1000_PHY_PAGE_SELECT,
      0x001d);
    if (ret_val)
     return ret_val;
    ret_val = e1000_phy_reset_dsp_generic(hw);
    if (ret_val)
     return ret_val;
   }
  }


  ret_val = e1000_phy_has_link_generic(hw, PHY_FORCE_LIMIT,
           100000, &link);
  if (ret_val)
   return ret_val;
 }

 if (hw->phy.type != e1000_phy_m88)
  return E1000_SUCCESS;

 if (hw->phy.id == 132 ||
  hw->phy.id == 130 ||
  hw->phy.id == 131)
  return E1000_SUCCESS;
 if (hw->phy.id == 133)
  return E1000_SUCCESS;
 if ((hw->phy.id == 128) ||
     (hw->phy.id == 129))
  return E1000_SUCCESS;
 ret_val = phy->ops.read_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  return ret_val;





 phy_data |= M88E1000_EPSCR_TX_CLK_25;
 ret_val = phy->ops.write_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL, phy_data);
 if (ret_val)
  return ret_val;




 ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  return ret_val;

 phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
 ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);

 return ret_val;
}
