
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_mcp_mb_params {int dummy; } ;
struct ecore_mcp_cmd_elem {int list; int expected_seq_num; struct ecore_mcp_mb_params* p_mb_params; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; int p_dev; } ;
struct TYPE_2__ {int cmd_list; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int GFP_ATOMIC ;
 int OSAL_LIST_PUSH_HEAD (int *,int *) ;
 struct ecore_mcp_cmd_elem* OSAL_NULL ;
 struct ecore_mcp_cmd_elem* OSAL_ZALLOC (int ,int ,int) ;

__attribute__((used)) static struct ecore_mcp_cmd_elem *
ecore_mcp_cmd_add_elem(struct ecore_hwfn *p_hwfn,
         struct ecore_mcp_mb_params *p_mb_params,
         u16 expected_seq_num)
{
 struct ecore_mcp_cmd_elem *p_cmd_elem = OSAL_NULL;

 p_cmd_elem = OSAL_ZALLOC(p_hwfn->p_dev, GFP_ATOMIC,
     sizeof(*p_cmd_elem));
 if (!p_cmd_elem) {
  DP_NOTICE(p_hwfn, 0,
     "Failed to allocate `struct ecore_mcp_cmd_elem'\n");
  goto out;
 }

 p_cmd_elem->p_mb_params = p_mb_params;
 p_cmd_elem->expected_seq_num = expected_seq_num;
 OSAL_LIST_PUSH_HEAD(&p_cmd_elem->list, &p_hwfn->mcp_info->cmd_list);
out:
 return p_cmd_elem;
}
