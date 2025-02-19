
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int capabilities; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int,char*,int ) ;
 int DRV_MSG_CODE_GET_MFW_FEATURE_SUPPORT ;
 int ECORE_MSG_PROBE ;
 int ECORE_MSG_SP ;
 int ECORE_SUCCESS ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;

enum _ecore_status_t ecore_mcp_get_capabilities(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt)
{
 u32 mcp_resp;
 enum _ecore_status_t rc;

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_GET_MFW_FEATURE_SUPPORT,
      0, &mcp_resp, &p_hwfn->mcp_info->capabilities);
 if (rc == ECORE_SUCCESS)
  DP_VERBOSE(p_hwfn, (ECORE_MSG_SP | ECORE_MSG_PROBE),
      "MFW supported features: %08x\n",
      p_hwfn->mcp_info->capabilities);

 return rc;
}
