
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_resources { ____Placeholder_ecore_resources } ecore_resources ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (struct ecore_hwfn*,char*,int,int ,scalar_t__) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int,int ) ;
 int ECORE_SUCCESS ;
 scalar_t__ FW_MSG_CODE_RESOURCE_ALLOC_OK ;
 int ecore_hw_get_resc_name (int) ;
 int ecore_mcp_set_resc_max_val (struct ecore_hwfn*,struct ecore_ptt*,int,scalar_t__,scalar_t__*) ;

__attribute__((used)) static enum _ecore_status_t
__ecore_hw_set_soft_resc_size(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         enum ecore_resources res_id,
         u32 resc_max_val,
         u32 *p_mcp_resp)
{
 enum _ecore_status_t rc;

 rc = ecore_mcp_set_resc_max_val(p_hwfn, p_ptt, res_id,
     resc_max_val, p_mcp_resp);
 if (rc != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0,
     "MFW response failure for a max value setting of resource %d [%s]\n",
     res_id, ecore_hw_get_resc_name(res_id));
  return rc;
 }

 if (*p_mcp_resp != FW_MSG_CODE_RESOURCE_ALLOC_OK)
  DP_INFO(p_hwfn,
   "Failed to set the max value of resource %d [%s]. mcp_resp = 0x%08x.\n",
   res_id, ecore_hw_get_resc_name(res_id), *p_mcp_resp);

 return ECORE_SUCCESS;
}
