
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_mcp_function_info {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {struct ecore_mcp_function_info const func_info; } ;


 struct ecore_mcp_function_info const* OSAL_NULL ;

const struct ecore_mcp_function_info
*ecore_mcp_get_function_info(struct ecore_hwfn *p_hwfn)
{
 if (!p_hwfn || !p_hwfn->mcp_info)
  return OSAL_NULL;
 return &p_hwfn->mcp_info->func_info;
}
