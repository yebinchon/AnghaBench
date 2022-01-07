
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct i40e_hw {scalar_t__ vendor_id; int device_id; TYPE_1__ mac; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT2 (char*,int ,int) ;
 int I40E_ERR_DEVICE_NOT_SUPPORTED ;
 scalar_t__ I40E_INTEL_VENDOR_ID ;
 int I40E_MAC_GENERIC ;
 int I40E_MAC_VF ;
 int I40E_MAC_X722 ;
 int I40E_MAC_X722_VF ;
 int I40E_MAC_XL710 ;
 int I40E_SUCCESS ;

enum i40e_status_code i40e_set_mac_type(struct i40e_hw *hw)
{
 enum i40e_status_code status = I40E_SUCCESS;

 DEBUGFUNC("i40e_set_mac_type\n");

 if (hw->vendor_id == I40E_INTEL_VENDOR_ID) {
  switch (hw->device_id) {
  case 131:
  case 138:
  case 141:
  case 140:
  case 137:
  case 136:
  case 135:
  case 150:
  case 149:
  case 146:
  case 145:
  case 144:
  case 143:
   hw->mac.type = I40E_MAC_XL710;
   break;
  case 139:
  case 134:
  case 132:
  case 147:
  case 148:
  case 133:
   hw->mac.type = I40E_MAC_X722;
   break;
  case 128:
   hw->mac.type = I40E_MAC_X722_VF;
   break;
  case 130:
  case 129:
  case 142:
   hw->mac.type = I40E_MAC_VF;
   break;
  default:
   hw->mac.type = I40E_MAC_GENERIC;
   break;
  }
 } else {
  status = I40E_ERR_DEVICE_NOT_SUPPORTED;
 }

 DEBUGOUT2("i40e_set_mac_type found mac: %d, returns: %d\n",
    hw->mac.type, status);
 return status;
}
