
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 scalar_t__ E1000_ERR_PHY ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_copper_link_setup_igp (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_setup_m88 (struct e1000_hw*) ;



 scalar_t__ e1000_setup_copper_link_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_copper_link_82571(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;

 DEBUGFUNC("e1000_setup_copper_link_82571");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 ctrl |= E1000_CTRL_SLU;
 ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);

 switch (hw->phy.type) {
 case 128:
 case 130:
  ret_val = e1000_copper_link_setup_m88(hw);
  break;
 case 129:
  ret_val = e1000_copper_link_setup_igp(hw);
  break;
 default:
  return -E1000_ERR_PHY;
  break;
 }

 if (ret_val)
  return ret_val;

 return e1000_setup_copper_link_generic(hw);
}
