
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int current_mode; } ;
struct e1000_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_CTRL ;
 int E1000_CTRL_RFCE ;
 int E1000_CTRL_TFCE ;
 int E1000_ERR_CONFIG ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;





s32 e1000_force_mac_fc_generic(struct e1000_hw *hw)
{
 u32 ctrl;

 DEBUGFUNC("e1000_force_mac_fc_generic");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 DEBUGOUT1("hw->fc.current_mode = %u\n", hw->fc.current_mode);

 switch (hw->fc.current_mode) {
 case 130:
  ctrl &= (~(E1000_CTRL_TFCE | E1000_CTRL_RFCE));
  break;
 case 129:
  ctrl &= (~E1000_CTRL_TFCE);
  ctrl |= E1000_CTRL_RFCE;
  break;
 case 128:
  ctrl &= (~E1000_CTRL_RFCE);
  ctrl |= E1000_CTRL_TFCE;
  break;
 case 131:
  ctrl |= (E1000_CTRL_TFCE | E1000_CTRL_RFCE);
  break;
 default:
  DEBUGOUT("Flow control param set incorrectly\n");
  return -E1000_ERR_CONFIG;
 }

 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);

 return E1000_SUCCESS;
}
