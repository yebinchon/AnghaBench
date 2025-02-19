
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct i40e_hw {int flags; int port; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_AQ_PHY_REG_ACCESS_EXTERNAL ;
 int I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE ;
 int I40E_PHY_COM_REG_PAGE ;
 int I40E_PHY_LED_PROV_REG_1 ;
 int i40e_aq_set_phy_register (struct i40e_hw*,int ,int ,int ,scalar_t__,int *) ;
 int i40e_get_phy_address (struct i40e_hw*,int ) ;
 int i40e_write_phy_register_clause45 (struct i40e_hw*,int ,int ,int ,int ) ;

__attribute__((used)) static enum i40e_status_code i40e_led_set_reg(struct i40e_hw *hw, u16 led_addr,
           u32 reg_val)
{
 enum i40e_status_code status;
 u8 phy_addr = 0;

 if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
  status = i40e_aq_set_phy_register(hw,
      I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
      I40E_PHY_COM_REG_PAGE,
      I40E_PHY_LED_PROV_REG_1,
      reg_val, ((void*)0));
 } else {
  phy_addr = i40e_get_phy_address(hw, hw->port);
  status = i40e_write_phy_register_clause45(hw,
         I40E_PHY_COM_REG_PAGE,
         led_addr, phy_addr,
         (u16)reg_val);
 }

 return status;
}
