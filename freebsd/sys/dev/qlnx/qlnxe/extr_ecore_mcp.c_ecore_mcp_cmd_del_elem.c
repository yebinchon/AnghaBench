
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_mcp_cmd_elem {int list; } ;
struct ecore_hwfn {int p_dev; TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int cmd_list; } ;


 int OSAL_FREE (int ,struct ecore_mcp_cmd_elem*) ;
 int OSAL_LIST_REMOVE_ENTRY (int *,int *) ;

__attribute__((used)) static void ecore_mcp_cmd_del_elem(struct ecore_hwfn *p_hwfn,
       struct ecore_mcp_cmd_elem *p_cmd_elem)
{
 OSAL_LIST_REMOVE_ENTRY(&p_cmd_elem->list, &p_hwfn->mcp_info->cmd_list);
 OSAL_FREE(p_hwfn->p_dev, p_cmd_elem);
}
