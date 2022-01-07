
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_EEC_BY_MAC (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_EEC_DI ;
 scalar_t__ IXGBE_EEC_DO ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_lower_eeprom_clk (struct ixgbe_hw*,scalar_t__*) ;
 int ixgbe_raise_eeprom_clk (struct ixgbe_hw*,scalar_t__*) ;

__attribute__((used)) static u16 ixgbe_shift_in_eeprom_bits(struct ixgbe_hw *hw, u16 count)
{
 u32 eec;
 u32 i;
 u16 data = 0;

 DEBUGFUNC("ixgbe_shift_in_eeprom_bits");
 eec = IXGBE_READ_REG(hw, IXGBE_EEC_BY_MAC(hw));

 eec &= ~(IXGBE_EEC_DO | IXGBE_EEC_DI);

 for (i = 0; i < count; i++) {
  data = data << 1;
  ixgbe_raise_eeprom_clk(hw, &eec);

  eec = IXGBE_READ_REG(hw, IXGBE_EEC_BY_MAC(hw));

  eec &= ~(IXGBE_EEC_DI);
  if (eec & IXGBE_EEC_DO)
   data |= 1;

  ixgbe_lower_eeprom_clk(hw, &eec);
 }

 return data;
}
