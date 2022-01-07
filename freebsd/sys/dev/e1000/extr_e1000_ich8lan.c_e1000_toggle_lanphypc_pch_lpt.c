
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_LPCD ;
 int E1000_CTRL_LANPHYPC_OVERRIDE ;
 int E1000_CTRL_LANPHYPC_VALUE ;
 int E1000_FEXTNVM3 ;
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC ;
 int E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_pch_lpt ;
 int msec_delay (int) ;

__attribute__((used)) static void e1000_toggle_lanphypc_pch_lpt(struct e1000_hw *hw)
{
 u32 mac_reg;

 DEBUGFUNC("e1000_toggle_lanphypc_pch_lpt");


 mac_reg = E1000_READ_REG(hw, E1000_FEXTNVM3);
 mac_reg &= ~E1000_FEXTNVM3_PHY_CFG_COUNTER_MASK;
 mac_reg |= E1000_FEXTNVM3_PHY_CFG_COUNTER_50MSEC;
 E1000_WRITE_REG(hw, E1000_FEXTNVM3, mac_reg);


 mac_reg = E1000_READ_REG(hw, E1000_CTRL);
 mac_reg |= E1000_CTRL_LANPHYPC_OVERRIDE;
 mac_reg &= ~E1000_CTRL_LANPHYPC_VALUE;
 E1000_WRITE_REG(hw, E1000_CTRL, mac_reg);
 E1000_WRITE_FLUSH(hw);
 msec_delay(1);
 mac_reg &= ~E1000_CTRL_LANPHYPC_OVERRIDE;
 E1000_WRITE_REG(hw, E1000_CTRL, mac_reg);
 E1000_WRITE_FLUSH(hw);

 if (hw->mac.type < e1000_pch_lpt) {
  msec_delay(50);
 } else {
  u16 count = 20;

  do {
   msec_delay(5);
  } while (!(E1000_READ_REG(hw, E1000_CTRL_EXT) &
      E1000_CTRL_EXT_LPCD) && count--);

  msec_delay(30);
 }
}
