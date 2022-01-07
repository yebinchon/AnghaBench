
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_ov_driver_state { ____Placeholder_ecore_ov_driver_state } ecore_ov_driver_state ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_ACTIVE ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_DISABLED ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_NOT_LOADED ;
 int ECORE_INVAL ;



 int ECORE_SUCCESS ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;

enum _ecore_status_t
ecore_mcp_ov_update_driver_state(struct ecore_hwfn *p_hwfn,
     struct ecore_ptt *p_ptt,
     enum ecore_ov_driver_state drv_state)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 enum _ecore_status_t rc;

 switch (drv_state) {
 case 128:
  drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_NOT_LOADED;
  break;
 case 129:
  drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_DISABLED;
  break;
 case 130:
  drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_ACTIVE;
  break;
 default:
  DP_NOTICE(p_hwfn, 1,
     "Invalid driver state %d\n", drv_state);
  return ECORE_INVAL;
 }

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE,
      drv_mb_param, &resp, &param);
 if (rc != ECORE_SUCCESS)
  DP_ERR(p_hwfn, "Failed to send driver state\n");

 return rc;
}
