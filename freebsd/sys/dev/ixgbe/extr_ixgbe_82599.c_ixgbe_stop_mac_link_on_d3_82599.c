
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int wol_enabled; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_AUTOC2 ;
 int IXGBE_AUTOC2_LINK_DISABLE_ON_D3_MASK ;
 int IXGBE_EEPROM_CCD_BIT ;
 int IXGBE_EEPROM_CTRL_2 ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_mng_present (struct ixgbe_hw*) ;
 int ixgbe_read_eeprom (struct ixgbe_hw*,int ,int*) ;

void ixgbe_stop_mac_link_on_d3_82599(struct ixgbe_hw *hw)
{
 u32 autoc2_reg;
 u16 ee_ctrl_2 = 0;

 DEBUGFUNC("ixgbe_stop_mac_link_on_d3_82599");
 ixgbe_read_eeprom(hw, IXGBE_EEPROM_CTRL_2, &ee_ctrl_2);

 if (!ixgbe_mng_present(hw) && !hw->wol_enabled &&
     ee_ctrl_2 & IXGBE_EEPROM_CCD_BIT) {
  autoc2_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
  autoc2_reg |= IXGBE_AUTOC2_LINK_DISABLE_ON_D3_MASK;
  IXGBE_WRITE_REG(hw, IXGBE_AUTOC2, autoc2_reg);
 }
}
