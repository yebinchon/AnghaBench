
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_resc_alloc_out_params {int res_id; int resc_start; int resc_num; int mcp_resp; int cmd; } ;
struct ecore_resc_alloc_in_params {int res_id; int resc_start; int resc_num; int mcp_resp; int cmd; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef int out_params ;
typedef int in_params ;
typedef enum ecore_resources { ____Placeholder_ecore_resources } ecore_resources ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DRV_MSG_GET_RESOURCE_ALLOC_MSG ;
 int ECORE_SUCCESS ;
 int FW_MSG_CODE_RESOURCE_ALLOC_OK ;
 int OSAL_MEM_ZERO (struct ecore_resc_alloc_out_params*,int) ;
 int ecore_mcp_resc_allocation_msg (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_resc_alloc_out_params*,struct ecore_resc_alloc_out_params*) ;

enum _ecore_status_t
ecore_mcp_get_resc_info(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
   enum ecore_resources res_id, u32 *p_mcp_resp,
   u32 *p_resc_num, u32 *p_resc_start)
{
 struct ecore_resc_alloc_out_params out_params;
 struct ecore_resc_alloc_in_params in_params;
 enum _ecore_status_t rc;

 OSAL_MEM_ZERO(&in_params, sizeof(in_params));
 in_params.cmd = DRV_MSG_GET_RESOURCE_ALLOC_MSG;
 in_params.res_id = res_id;
 OSAL_MEM_ZERO(&out_params, sizeof(out_params));
 rc = ecore_mcp_resc_allocation_msg(p_hwfn, p_ptt, &in_params,
        &out_params);
 if (rc != ECORE_SUCCESS)
  return rc;

 *p_mcp_resp = out_params.mcp_resp;

 if (*p_mcp_resp == FW_MSG_CODE_RESOURCE_ALLOC_OK) {
  *p_resc_num = out_params.resc_num;
  *p_resc_start = out_params.resc_start;
 }

 return ECORE_SUCCESS;
}
