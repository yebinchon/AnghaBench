
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_EEC_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EEC_SK ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int usec_delay (int) ;

__attribute__((used)) static void ixgbe_lower_eeprom_clk(struct ixgbe_hw *hw, u32 *eec)
{
 DEBUGFUNC("ixgbe_lower_eeprom_clk");





 *eec = *eec & ~IXGBE_EEC_SK;
 IXGBE_WRITE_REG(hw, IXGBE_EEC_BY_MAC(hw), *eec);
 IXGBE_WRITE_FLUSH(hw);
 usec_delay(1);
}
