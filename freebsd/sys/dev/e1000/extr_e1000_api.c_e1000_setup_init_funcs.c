
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; int hw_addr; } ;
typedef int s32 ;


 int DEBUGOUT (char*) ;
 int E1000_ERR_CONFIG ;
 int e1000_init_function_pointers_80003es2lan (struct e1000_hw*) ;
 int e1000_init_function_pointers_82540 (struct e1000_hw*) ;
 int e1000_init_function_pointers_82541 (struct e1000_hw*) ;
 int e1000_init_function_pointers_82542 (struct e1000_hw*) ;
 int e1000_init_function_pointers_82543 (struct e1000_hw*) ;
 int e1000_init_function_pointers_82571 (struct e1000_hw*) ;
 int e1000_init_function_pointers_82575 (struct e1000_hw*) ;
 int e1000_init_function_pointers_i210 (struct e1000_hw*) ;
 int e1000_init_function_pointers_ich8lan (struct e1000_hw*) ;
 int e1000_init_function_pointers_vf (struct e1000_hw*) ;
 int e1000_init_mac_ops_generic (struct e1000_hw*) ;
 int e1000_init_mac_params (struct e1000_hw*) ;
 int e1000_init_mbx_ops_generic (struct e1000_hw*) ;
 int e1000_init_mbx_params (struct e1000_hw*) ;
 int e1000_init_nvm_ops_generic (struct e1000_hw*) ;
 int e1000_init_nvm_params (struct e1000_hw*) ;
 int e1000_init_phy_ops_generic (struct e1000_hw*) ;
 int e1000_init_phy_params (struct e1000_hw*) ;





 int e1000_set_mac_type (struct e1000_hw*) ;



s32 e1000_setup_init_funcs(struct e1000_hw *hw, bool init_device)
{
 s32 ret_val;


 ret_val = e1000_set_mac_type(hw);
 if (ret_val) {
  DEBUGOUT("ERROR: MAC type could not be set properly.\n");
  goto out;
 }

 if (!hw->hw_addr) {
  DEBUGOUT("ERROR: Registers not mapped\n");
  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }





 e1000_init_mac_ops_generic(hw);
 e1000_init_phy_ops_generic(hw);
 e1000_init_nvm_ops_generic(hw);
 e1000_init_mbx_ops_generic(hw);






 switch (hw->mac.type) {
 case 158:
  e1000_init_function_pointers_82542(hw);
  break;
 case 157:
 case 156:
  e1000_init_function_pointers_82543(hw);
  break;
 case 161:
 case 155:
 case 154:
 case 153:
 case 152:
  e1000_init_function_pointers_82540(hw);
  break;
 case 160:
 case 159:
 case 151:
 case 150:
  e1000_init_function_pointers_82541(hw);
  break;
 case 149:
 case 148:
 case 147:
 case 146:
 case 142:
  e1000_init_function_pointers_82571(hw);
  break;
 case 162:
  e1000_init_function_pointers_80003es2lan(hw);
  break;
 case 136:
 case 135:
 case 137:
 case 130:
 case 134:
 case 132:
 case 131:
 case 133:
  e1000_init_function_pointers_ich8lan(hw);
  break;
 case 145:
 case 144:
 case 143:
 case 139:
 case 138:
  e1000_init_function_pointers_82575(hw);
  break;
 case 141:
 case 140:
  e1000_init_function_pointers_i210(hw);
  break;
 case 129:
  e1000_init_function_pointers_vf(hw);
  break;
 case 128:
  e1000_init_function_pointers_vf(hw);
  break;
 default:
  DEBUGOUT("Hardware not supported\n");
  ret_val = -E1000_ERR_CONFIG;
  break;
 }





 if (!(ret_val) && init_device) {
  ret_val = e1000_init_mac_params(hw);
  if (ret_val)
   goto out;

  ret_val = e1000_init_nvm_params(hw);
  if (ret_val)
   goto out;

  ret_val = e1000_init_phy_params(hw);
  if (ret_val)
   goto out;

  ret_val = e1000_init_mbx_params(hw);
  if (ret_val)
   goto out;
 }

out:
 return ret_val;
}
