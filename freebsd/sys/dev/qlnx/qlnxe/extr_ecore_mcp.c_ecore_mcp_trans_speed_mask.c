
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (struct ecore_hwfn*,char*,int) ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int ETH_TRANSCEIVER_STATE ;
 int ETH_TRANSCEIVER_TYPE ;
 int GET_MFW_FIELD (int,int ) ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G ;
 int NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G ;
 int ecore_mcp_get_transceiver_data (struct ecore_hwfn*,struct ecore_ptt*,int*) ;
 scalar_t__ is_transceiver_ready (int,int) ;

enum _ecore_status_t ecore_mcp_trans_speed_mask(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      u32 *p_speed_mask)
{
 u32 transceiver_data, transceiver_type, transceiver_state;

 ecore_mcp_get_transceiver_data(p_hwfn, p_ptt, &transceiver_data);

 transceiver_state = GET_MFW_FIELD(transceiver_data,
       ETH_TRANSCEIVER_STATE);

 transceiver_type = GET_MFW_FIELD(transceiver_data,
      ETH_TRANSCEIVER_TYPE);

 if (is_transceiver_ready(transceiver_state, transceiver_type) == 0) {
  return ECORE_INVAL;
 }

 switch (transceiver_type) {
 case 152:
 case 150:
 case 151:
 case 153:
 case 167:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G;
  break;

 case 154:
 case 157:
 case 156:
 case 158:
 case 155:
 case 160:
 case 137:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G;
  break;

 case 139:
 case 138:
 case 133:
 case 134:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G;
  break;

 case 165:
 case 161:
 case 162:
 case 163:
 case 166:
  *p_speed_mask =
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G;
  break;

 case 141:
 case 142:
 case 146:
 case 147:
 case 148:
 case 149:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G;
  break;

 case 144:
 case 143:
 case 145:
 case 136:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G;
  break;

 case 140:
 case 135:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G;
  break;

 case 164:
 case 131:
  *p_speed_mask =
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_50G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_20G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G;
  break;

 case 129:
 case 130:
 case 132:
  *p_speed_mask =
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_BB_100G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_25G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G;
  break;

 case 128:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_40G;
  break;

 case 159:
  *p_speed_mask = NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_10G |
   NVM_CFG1_PORT_DRV_SPEED_CAPABILITY_MASK_1G;
  break;

 default:
  DP_INFO(p_hwfn, "Unknown transcevier type 0x%x\n",
   transceiver_type);
  *p_speed_mask = 0xff;
  break;
 }

 return ECORE_SUCCESS;
}
