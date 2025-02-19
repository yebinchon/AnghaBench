
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
 int I40E_PHY_LED_LINK_MODE_MASK ;
 int I40E_PHY_LED_PROV_REG_1 ;
 int I40E_SUCCESS ;
 int i40e_aq_get_phy_register (struct i40e_hw*,int ,int ,int,scalar_t__*,int *) ;
 int i40e_get_phy_address (struct i40e_hw*,int ) ;
 int i40e_read_phy_register_clause45 (struct i40e_hw*,int ,int,int ,int*) ;

enum i40e_status_code i40e_led_get_phy(struct i40e_hw *hw, u16 *led_addr,
           u16 *val)
{
 enum i40e_status_code status = I40E_SUCCESS;
 u16 gpio_led_port;
 u32 reg_val_aq;
 u16 temp_addr;
 u8 phy_addr = 0;
 u16 reg_val;

 if (hw->flags & I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE) {
  status = i40e_aq_get_phy_register(hw,
      I40E_AQ_PHY_REG_ACCESS_EXTERNAL,
      I40E_PHY_COM_REG_PAGE,
      I40E_PHY_LED_PROV_REG_1,
      &reg_val_aq, ((void*)0));
  if (status == I40E_SUCCESS)
   *val = (u16)reg_val_aq;
  return status;
 }
 temp_addr = I40E_PHY_LED_PROV_REG_1;
 phy_addr = i40e_get_phy_address(hw, hw->port);
 for (gpio_led_port = 0; gpio_led_port < 3; gpio_led_port++,
      temp_addr++) {
  status = i40e_read_phy_register_clause45(hw,
        I40E_PHY_COM_REG_PAGE,
        temp_addr, phy_addr,
        &reg_val);
  if (status)
   return status;
  *val = reg_val;
  if (reg_val & I40E_PHY_LED_LINK_MODE_MASK) {
   *led_addr = temp_addr;
   break;
  }
 }
 return status;
}
