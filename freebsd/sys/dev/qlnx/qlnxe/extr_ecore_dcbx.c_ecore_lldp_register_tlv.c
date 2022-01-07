
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_lldp_agent { ____Placeholder_ecore_lldp_agent } ecore_lldp_agent ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DRV_MB_PARAM_LLDP_AGENT ;
 int DRV_MB_PARAM_LLDP_TLV_RX_TYPE ;
 int DRV_MSG_CODE_REGISTER_LLDP_TLVS_RX ;
 int ECORE_INVAL ;



 int ECORE_SUCCESS ;
 int LLDP_NEAREST_BRIDGE ;
 int LLDP_NEAREST_CUSTOMER_BRIDGE ;
 int LLDP_NEAREST_NON_TPMR_BRIDGE ;
 int SET_MFW_FIELD (int ,int ,int ) ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;

enum _ecore_status_t ecore_lldp_register_tlv(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          enum ecore_lldp_agent agent,
          u8 tlv_type)
{
 u32 mb_param = 0, mcp_resp = 0, mcp_param = 0, val = 0;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 switch (agent) {
 case 130:
  val = LLDP_NEAREST_BRIDGE;
  break;
 case 128:
  val = LLDP_NEAREST_NON_TPMR_BRIDGE;
  break;
 case 129:
  val = LLDP_NEAREST_CUSTOMER_BRIDGE;
  break;
 default:
  DP_ERR(p_hwfn, "Invalid agent type %d\n", agent);
  return ECORE_INVAL;
 }

 SET_MFW_FIELD(mb_param, DRV_MB_PARAM_LLDP_AGENT, val);
 SET_MFW_FIELD(mb_param, DRV_MB_PARAM_LLDP_TLV_RX_TYPE, tlv_type);

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_REGISTER_LLDP_TLVS_RX,
      mb_param, &mcp_resp, &mcp_param);
 if (rc != ECORE_SUCCESS)
  DP_NOTICE(p_hwfn, 0, "Failed to register TLV\n");

 return rc;
}
