
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_load_req_params {scalar_t__ timeout_val; int override_force_load; int avoid_eng_reset; scalar_t__ drv_role; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct ecore_drv_load_params {scalar_t__ mfw_timeout_val; int mfw_timeout_fallback; int override_force_load; int avoid_eng_reset; scalar_t__ is_crash_kernel; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int capabilities; } ;


 int DP_INFO (struct ecore_hwfn*,char*,scalar_t__,char*,scalar_t__) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int ECORE_ABORTED ;
 scalar_t__ ECORE_DRV_ROLE_KDUMP ;
 scalar_t__ ECORE_DRV_ROLE_OS ;
 scalar_t__ ECORE_LOAD_REQ_LOCK_TO_DEFAULT ;
 scalar_t__ ECORE_LOAD_REQ_LOCK_TO_NONE ;
 scalar_t__ ECORE_OVERRIDE_FORCE_LOAD_NONE ;
 int ECORE_SUCCESS ;



 int FW_MB_PARAM_FEATURE_SUPPORT_DRV_LOAD_TO ;
 int OSAL_BUILD_BUG_ON (int) ;
 int OSAL_MEM_ZERO (struct ecore_load_req_params*,int) ;
 struct ecore_drv_load_params* OSAL_NULL ;

__attribute__((used)) static enum _ecore_status_t
ecore_fill_load_req_params(struct ecore_hwfn *p_hwfn,
      struct ecore_load_req_params *p_load_req,
      struct ecore_drv_load_params *p_drv_load)
{



 OSAL_BUILD_BUG_ON(ECORE_DRV_ROLE_OS != 0);
 OSAL_BUILD_BUG_ON(ECORE_LOAD_REQ_LOCK_TO_DEFAULT != 0);
 OSAL_BUILD_BUG_ON(ECORE_OVERRIDE_FORCE_LOAD_NONE != 0);

 OSAL_MEM_ZERO(p_load_req, sizeof(*p_load_req));

 if (p_drv_load == OSAL_NULL)
  goto out;

 p_load_req->drv_role = p_drv_load->is_crash_kernel ?
          ECORE_DRV_ROLE_KDUMP :
          ECORE_DRV_ROLE_OS;
 p_load_req->avoid_eng_reset = p_drv_load->avoid_eng_reset;
 p_load_req->override_force_load = p_drv_load->override_force_load;





 if (p_drv_load->mfw_timeout_val == ECORE_LOAD_REQ_LOCK_TO_DEFAULT ||
     p_drv_load->mfw_timeout_val == ECORE_LOAD_REQ_LOCK_TO_NONE ||
     (p_hwfn->mcp_info->capabilities &
      FW_MB_PARAM_FEATURE_SUPPORT_DRV_LOAD_TO)) {
  p_load_req->timeout_val = p_drv_load->mfw_timeout_val;
  goto out;
 }

 switch (p_drv_load->mfw_timeout_fallback) {
 case 128:
  p_load_req->timeout_val = ECORE_LOAD_REQ_LOCK_TO_NONE;
  break;
 case 129:
  p_load_req->timeout_val = ECORE_LOAD_REQ_LOCK_TO_DEFAULT;
  break;
 case 130:
  DP_NOTICE(p_hwfn, 0,
     "Received %d as a value for MFW timeout while the MFW supports only default [%d] or none [%d]. Abort.\n",
     p_drv_load->mfw_timeout_val,
     ECORE_LOAD_REQ_LOCK_TO_DEFAULT,
     ECORE_LOAD_REQ_LOCK_TO_NONE);
  return ECORE_ABORTED;
 }

 DP_INFO(p_hwfn,
  "Modified the MFW timeout value from %d to %s [%d] due to lack of MFW support\n",
  p_drv_load->mfw_timeout_val,
  (p_load_req->timeout_val == ECORE_LOAD_REQ_LOCK_TO_DEFAULT) ?
  "default" : "none",
  p_load_req->timeout_val);
out:
 return ECORE_SUCCESS;
}
