
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_ov_eswitch { ____Placeholder_ecore_ov_eswitch } ecore_ov_eswitch ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int DRV_MB_PARAM_ESWITCH_MODE_NONE ;
 int DRV_MB_PARAM_ESWITCH_MODE_VEB ;
 int DRV_MB_PARAM_ESWITCH_MODE_VEPA ;
 int DRV_MSG_CODE_OV_UPDATE_ESWITCH_MODE ;
 int ECORE_INVAL ;



 int ECORE_SUCCESS ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;

enum _ecore_status_t
ecore_mcp_ov_update_eswitch(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
       enum ecore_ov_eswitch eswitch)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 enum _ecore_status_t rc;

 switch (eswitch) {
 case 130:
  drv_mb_param = DRV_MB_PARAM_ESWITCH_MODE_NONE;
  break;
 case 129:
  drv_mb_param = DRV_MB_PARAM_ESWITCH_MODE_VEB;
  break;
 case 128:
  drv_mb_param = DRV_MB_PARAM_ESWITCH_MODE_VEPA;
  break;
 default:
  DP_ERR(p_hwfn, "Invalid eswitch mode %d\n", eswitch);
  return ECORE_INVAL;
 }

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_ESWITCH_MODE,
      drv_mb_param, &resp, &param);
 if (rc != ECORE_SUCCESS)
  DP_ERR(p_hwfn, "Failed to send eswitch mode, rc = %d\n", rc);

 return rc;
}
