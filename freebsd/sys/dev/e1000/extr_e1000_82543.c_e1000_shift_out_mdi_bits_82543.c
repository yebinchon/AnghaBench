
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int E1000_CTRL ;
 int E1000_CTRL_MDC_DIR ;
 int E1000_CTRL_MDIO ;
 int E1000_CTRL_MDIO_DIR ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_lower_mdi_clk_82543 (struct e1000_hw*,int*) ;
 int e1000_raise_mdi_clk_82543 (struct e1000_hw*,int*) ;
 int usec_delay (int) ;

__attribute__((used)) static void e1000_shift_out_mdi_bits_82543(struct e1000_hw *hw, u32 data,
        u16 count)
{
 u32 ctrl, mask;







 mask = 0x01;
 mask <<= (count - 1);

 ctrl = E1000_READ_REG(hw, E1000_CTRL);


 ctrl |= (E1000_CTRL_MDIO_DIR | E1000_CTRL_MDC_DIR);

 while (mask) {






  if (data & mask)
   ctrl |= E1000_CTRL_MDIO;
  else
   ctrl &= ~E1000_CTRL_MDIO;

  E1000_WRITE_REG(hw, E1000_CTRL, ctrl);
  E1000_WRITE_FLUSH(hw);

  usec_delay(10);

  e1000_raise_mdi_clk_82543(hw, &ctrl);
  e1000_lower_mdi_clk_82543(hw, &ctrl);

  mask >>= 1;
 }
}
