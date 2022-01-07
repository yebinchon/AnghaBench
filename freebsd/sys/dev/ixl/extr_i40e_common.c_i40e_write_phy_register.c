
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_hw {int device_id; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
 int I40E_ERR_UNKNOWN_PHY ;
 int i40e_write_phy_register_clause22 (struct i40e_hw*,int ,int ,int ) ;
 int i40e_write_phy_register_clause45 (struct i40e_hw*,int ,int ,int ,int ) ;

enum i40e_status_code i40e_write_phy_register(struct i40e_hw *hw,
    u8 page, u16 reg, u8 phy_addr, u16 value)
{
 enum i40e_status_code status;

 switch (hw->device_id) {
 case 130:
  status = i40e_write_phy_register_clause22(hw,
   reg, phy_addr, value);
  break;
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  status = i40e_write_phy_register_clause45(hw,
   page, reg, phy_addr, value);
  break;
 default:
  status = I40E_ERR_UNKNOWN_PHY;
  break;
 }

 return status;
}
