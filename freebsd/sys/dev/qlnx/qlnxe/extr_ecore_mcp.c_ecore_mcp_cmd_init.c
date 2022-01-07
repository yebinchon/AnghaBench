
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_info {void* mfw_mb_shadow; void* mfw_mb_cur; int mfw_mb_length; int cmd_list; int link_lock; int cmd_lock; } ;
struct ecore_hwfn {int p_dev; struct ecore_mcp_info* mcp_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_NOMEM ;
 scalar_t__ ECORE_SUCCESS ;
 int GFP_KERNEL ;
 int MFW_DRV_MSG_MAX_DWORDS (int ) ;
 int OSAL_FREE (int ,struct ecore_mcp_info*) ;
 int OSAL_LIST_INIT (int *) ;
 void* OSAL_NULL ;
 scalar_t__ OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 int OSAL_SPIN_LOCK_DEALLOC (int *) ;
 int OSAL_SPIN_LOCK_INIT (int *) ;
 void* OSAL_ZALLOC (int ,int ,int) ;
 scalar_t__ ecore_load_mcp_offsets (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_free (struct ecore_hwfn*) ;

enum _ecore_status_t ecore_mcp_cmd_init(struct ecore_hwfn *p_hwfn,
     struct ecore_ptt *p_ptt)
{
 struct ecore_mcp_info *p_info;
 u32 size;


 p_hwfn->mcp_info = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL,
   sizeof(*p_hwfn->mcp_info));
 if (!p_hwfn->mcp_info) {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate mcp_info\n");
  return ECORE_NOMEM;
 }
 p_info = p_hwfn->mcp_info;
 OSAL_SPIN_LOCK_INIT(&p_info->cmd_lock);
 OSAL_SPIN_LOCK_INIT(&p_info->link_lock);

 OSAL_LIST_INIT(&p_info->cmd_list);

 if (ecore_load_mcp_offsets(p_hwfn, p_ptt) != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0, "MCP is not initialized\n");



  return ECORE_SUCCESS;
 }

 size = MFW_DRV_MSG_MAX_DWORDS(p_info->mfw_mb_length) * sizeof(u32);
 p_info->mfw_mb_cur = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, size);
 p_info->mfw_mb_shadow = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, size);
 if (p_info->mfw_mb_cur == OSAL_NULL || p_info->mfw_mb_shadow == OSAL_NULL)
  goto err;

 return ECORE_SUCCESS;

err:
 DP_NOTICE(p_hwfn, 0, "Failed to allocate mcp memory\n");
 ecore_mcp_free(p_hwfn);
 return ECORE_NOMEM;
}
