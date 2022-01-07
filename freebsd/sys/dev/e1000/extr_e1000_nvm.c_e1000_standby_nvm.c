
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_nvm_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_CS ;
 int E1000_EECD_SK ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_lower_eec_clk (struct e1000_hw*,int*) ;
 scalar_t__ e1000_nvm_eeprom_microwire ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int e1000_raise_eec_clk (struct e1000_hw*,int*) ;
 int usec_delay (int ) ;

__attribute__((used)) static void e1000_standby_nvm(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = E1000_READ_REG(hw, E1000_EECD);

 DEBUGFUNC("e1000_standby_nvm");

 if (nvm->type == e1000_nvm_eeprom_microwire) {
  eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  E1000_WRITE_FLUSH(hw);
  usec_delay(nvm->delay_usec);

  e1000_raise_eec_clk(hw, &eecd);


  eecd |= E1000_EECD_CS;
  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  E1000_WRITE_FLUSH(hw);
  usec_delay(nvm->delay_usec);

  e1000_lower_eec_clk(hw, &eecd);
 } else if (nvm->type == e1000_nvm_eeprom_spi) {

  eecd |= E1000_EECD_CS;
  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  E1000_WRITE_FLUSH(hw);
  usec_delay(nvm->delay_usec);
  eecd &= ~E1000_EECD_CS;
  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  E1000_WRITE_FLUSH(hw);
  usec_delay(nvm->delay_usec);
 }
}
