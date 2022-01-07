
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_nvm_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_DI ;
 int E1000_EECD_DO ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_lower_eec_clk (struct e1000_hw*,int*) ;
 scalar_t__ e1000_nvm_eeprom_microwire ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int e1000_raise_eec_clk (struct e1000_hw*,int*) ;
 int usec_delay (int ) ;

__attribute__((used)) static void e1000_shift_out_eec_bits(struct e1000_hw *hw, u16 data, u16 count)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = E1000_READ_REG(hw, E1000_EECD);
 u32 mask;

 DEBUGFUNC("e1000_shift_out_eec_bits");

 mask = 0x01 << (count - 1);
 if (nvm->type == e1000_nvm_eeprom_microwire)
  eecd &= ~E1000_EECD_DO;
 else
 if (nvm->type == e1000_nvm_eeprom_spi)
  eecd |= E1000_EECD_DO;

 do {
  eecd &= ~E1000_EECD_DI;

  if (data & mask)
   eecd |= E1000_EECD_DI;

  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  E1000_WRITE_FLUSH(hw);

  usec_delay(nvm->delay_usec);

  e1000_raise_eec_clk(hw, &eecd);
  e1000_lower_eec_clk(hw, &eecd);

  mask >>= 1;
 } while (mask);

 eecd &= ~E1000_EECD_DI;
 E1000_WRITE_REG(hw, E1000_EECD, eecd);
}
