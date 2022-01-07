
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ixgbe_hw {scalar_t__ vendor_id; int device_id; TYPE_1__ mac; int mvals; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT2 (char*,int ,int ) ;
 int ERROR_REPORT2 (int ,char*,int) ;
 int IXGBE_ERROR_UNSUPPORTED ;
 int IXGBE_ERR_DEVICE_NOT_SUPPORTED ;
 scalar_t__ IXGBE_INTEL_VENDOR_ID ;
 int IXGBE_SUCCESS ;
 int ixgbe_mac_82598EB ;
 int ixgbe_mac_82599EB ;
 int ixgbe_mac_X540 ;
 int ixgbe_mac_X550 ;
 int ixgbe_mac_X550EM_a ;
 int ixgbe_mac_X550EM_x ;
 int ixgbe_mvals_X540 ;
 int ixgbe_mvals_X550 ;
 int ixgbe_mvals_X550EM_a ;
 int ixgbe_mvals_X550EM_x ;
 int ixgbe_mvals_base ;

s32 ixgbe_set_mac_type(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_SUCCESS;

 DEBUGFUNC("ixgbe_set_mac_type\n");

 if (hw->vendor_id != IXGBE_INTEL_VENDOR_ID) {
  ERROR_REPORT2(IXGBE_ERROR_UNSUPPORTED,
        "Unsupported vendor id: %x", hw->vendor_id);
  return IXGBE_ERR_DEVICE_NOT_SUPPORTED;
 }

 hw->mvals = ixgbe_mvals_base;

 switch (hw->device_id) {
 case 177:
 case 169:
 case 175:
 case 176:
 case 174:
 case 173:
 case 172:
 case 168:
 case 167:
 case 166:
 case 170:
 case 171:
  hw->mac.type = ixgbe_mac_82598EB;
  break;
 case 159:
 case 158:
 case 150:
 case 162:
 case 160:
 case 156:
 case 164:
 case 154:
 case 155:
 case 153:
 case 152:
 case 157:
 case 165:
 case 161:
 case 163:
 case 151:
  hw->mac.type = ixgbe_mac_82599EB;
  break;
 case 149:
 case 148:
 case 147:
  hw->mac.type = ixgbe_mac_X540;
  hw->mvals = ixgbe_mvals_X540;
  break;
 case 129:
 case 128:
  hw->mac.type = ixgbe_mac_X550;
  hw->mvals = ixgbe_mvals_X550;
  break;
 case 132:
 case 133:
 case 135:
 case 134:
 case 131:
 case 130:
  hw->mac.type = ixgbe_mac_X550EM_x;
  hw->mvals = ixgbe_mvals_X550EM_x;
  break;
 case 143:
 case 142:
 case 138:
 case 137:
 case 136:
 case 145:
 case 144:
 case 146:
 case 141:
 case 140:
 case 139:
  hw->mac.type = ixgbe_mac_X550EM_a;
  hw->mvals = ixgbe_mvals_X550EM_a;
  break;
 default:
  ret_val = IXGBE_ERR_DEVICE_NOT_SUPPORTED;
  ERROR_REPORT2(IXGBE_ERROR_UNSUPPORTED,
        "Unsupported device id: %x",
        hw->device_id);
  break;
 }

 DEBUGOUT2("ixgbe_set_mac_type found mac: %d, returns: %d\n",
    hw->mac.type, ret_val);
 return ret_val;
}
