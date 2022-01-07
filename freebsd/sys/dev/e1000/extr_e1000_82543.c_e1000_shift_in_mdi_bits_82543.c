
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int E1000_CTRL ;
 int E1000_CTRL_MDIO ;
 int E1000_CTRL_MDIO_DIR ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_lower_mdi_clk_82543 (struct e1000_hw*,int*) ;
 int e1000_raise_mdi_clk_82543 (struct e1000_hw*,int*) ;

__attribute__((used)) static u16 e1000_shift_in_mdi_bits_82543(struct e1000_hw *hw)
{
 u32 ctrl;
 u16 data = 0;
 u8 i;
 ctrl = E1000_READ_REG(hw, E1000_CTRL);





 ctrl &= ~E1000_CTRL_MDIO_DIR;
 ctrl &= ~E1000_CTRL_MDIO;

 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);
 E1000_WRITE_FLUSH(hw);






 e1000_raise_mdi_clk_82543(hw, &ctrl);
 e1000_lower_mdi_clk_82543(hw, &ctrl);

 for (data = 0, i = 0; i < 16; i++) {
  data <<= 1;
  e1000_raise_mdi_clk_82543(hw, &ctrl);
  ctrl = E1000_READ_REG(hw, E1000_CTRL);

  if (ctrl & E1000_CTRL_MDIO)
   data |= 1;
  e1000_lower_mdi_clk_82543(hw, &ctrl);
 }

 e1000_raise_mdi_clk_82543(hw, &ctrl);
 e1000_lower_mdi_clk_82543(hw, &ctrl);

 return data;
}
