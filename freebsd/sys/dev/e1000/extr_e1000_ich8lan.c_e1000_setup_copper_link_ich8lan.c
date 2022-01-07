
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct TYPE_4__ {int type; TYPE_1__ ops; int mdix; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 int E1000_KMRNCTRLSTA_INBAND_PARAM ;
 int E1000_KMRNCTRLSTA_TIMEOUTS ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int IFE_PHY_MDIX_CONTROL ;
 int IFE_PMC_AUTO_MDIX ;
 int IFE_PMC_FORCE_MDIX ;
 scalar_t__ e1000_copper_link_setup_82577 (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_setup_igp (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_setup_m88 (struct e1000_hw*) ;






 scalar_t__ e1000_read_kmrn_reg_generic (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_setup_copper_link_generic (struct e1000_hw*) ;
 scalar_t__ e1000_write_kmrn_reg_generic (struct e1000_hw*,int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_setup_copper_link_ich8lan(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u16 reg_data;

 DEBUGFUNC("e1000_setup_copper_link_ich8lan");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 ctrl |= E1000_CTRL_SLU;
 ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);





 ret_val = e1000_write_kmrn_reg_generic(hw, E1000_KMRNCTRLSTA_TIMEOUTS,
            0xFFFF);
 if (ret_val)
  return ret_val;
 ret_val = e1000_read_kmrn_reg_generic(hw,
           E1000_KMRNCTRLSTA_INBAND_PARAM,
           &reg_data);
 if (ret_val)
  return ret_val;
 reg_data |= 0x3F;
 ret_val = e1000_write_kmrn_reg_generic(hw,
            E1000_KMRNCTRLSTA_INBAND_PARAM,
            reg_data);
 if (ret_val)
  return ret_val;

 switch (hw->phy.type) {
 case 128:
  ret_val = e1000_copper_link_setup_igp(hw);
  if (ret_val)
   return ret_val;
  break;
 case 130:
 case 132:
  ret_val = e1000_copper_link_setup_m88(hw);
  if (ret_val)
   return ret_val;
  break;
 case 133:
 case 131:
  ret_val = e1000_copper_link_setup_82577(hw);
  if (ret_val)
   return ret_val;
  break;
 case 129:
  ret_val = hw->phy.ops.read_reg(hw, IFE_PHY_MDIX_CONTROL,
            &reg_data);
  if (ret_val)
   return ret_val;

  reg_data &= ~IFE_PMC_AUTO_MDIX;

  switch (hw->phy.mdix) {
  case 1:
   reg_data &= ~IFE_PMC_FORCE_MDIX;
   break;
  case 2:
   reg_data |= IFE_PMC_FORCE_MDIX;
   break;
  case 0:
  default:
   reg_data |= IFE_PMC_AUTO_MDIX;
   break;
  }
  ret_val = hw->phy.ops.write_reg(hw, IFE_PHY_MDIX_CONTROL,
      reg_data);
  if (ret_val)
   return ret_val;
  break;
 default:
  break;
 }

 return e1000_setup_copper_link_generic(hw);
}
