
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ nvm; } ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 int E1000_EECD_CS ;
 int E1000_EECD_DI ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_lower_eec_clk (struct e1000_hw*,int*) ;
 scalar_t__ e1000_nvm_eeprom_microwire ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int e1000_raise_eec_clk (struct e1000_hw*,int*) ;

void e1000_stop_nvm(struct e1000_hw *hw)
{
 u32 eecd;

 DEBUGFUNC("e1000_stop_nvm");

 eecd = E1000_READ_REG(hw, E1000_EECD);
 if (hw->nvm.type == e1000_nvm_eeprom_spi) {

  eecd |= E1000_EECD_CS;
  e1000_lower_eec_clk(hw, &eecd);
 } else if (hw->nvm.type == e1000_nvm_eeprom_microwire) {

  eecd &= ~(E1000_EECD_CS | E1000_EECD_DI);
  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  e1000_raise_eec_clk(hw, &eecd);
  e1000_lower_eec_clk(hw, &eecd);
 }
}
