
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_mac_info {int txcw; void* serdes_has_link; void* autoneg_failed; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_SLU ;
 int E1000_CTRL_SWDPIN1 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RXCW ;
 int E1000_RXCW_C ;
 int E1000_STATUS ;
 int E1000_STATUS_LU ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_TXCW ;
 int E1000_TXCW_ANE ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 void* TRUE ;
 scalar_t__ e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;

s32 e1000_check_for_fiber_link_generic(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 rxcw;
 u32 ctrl;
 u32 status;
 s32 ret_val;

 DEBUGFUNC("e1000_check_for_fiber_link_generic");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 status = E1000_READ_REG(hw, E1000_STATUS);
 rxcw = E1000_READ_REG(hw, E1000_RXCW);
 if ((ctrl & E1000_CTRL_SWDPIN1) && !(status & E1000_STATUS_LU) &&
     !(rxcw & E1000_RXCW_C)) {
  if (!mac->autoneg_failed) {
   mac->autoneg_failed = TRUE;
   return E1000_SUCCESS;
  }
  DEBUGOUT("NOT Rx'ing /C/, disable AutoNeg and force link.\n");


  E1000_WRITE_REG(hw, E1000_TXCW, (mac->txcw & ~E1000_TXCW_ANE));


  ctrl = E1000_READ_REG(hw, E1000_CTRL);
  ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FD);
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl);


  ret_val = e1000_config_fc_after_link_up_generic(hw);
  if (ret_val) {
   DEBUGOUT("Error configuring flow control\n");
   return ret_val;
  }
 } else if ((ctrl & E1000_CTRL_SLU) && (rxcw & E1000_RXCW_C)) {





  DEBUGOUT("Rx'ing /C/, enable AutoNeg and stop forcing link.\n");
  E1000_WRITE_REG(hw, E1000_TXCW, mac->txcw);
  E1000_WRITE_REG(hw, E1000_CTRL, (ctrl & ~E1000_CTRL_SLU));

  mac->serdes_has_link = TRUE;
 }

 return E1000_SUCCESS;
}
