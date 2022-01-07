
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_mcp_link_capabilities {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {struct ecore_mcp_link_capabilities link_capabilities; } ;


 struct ecore_mcp_link_capabilities* OSAL_NULL ;

struct ecore_mcp_link_capabilities
*ecore_mcp_get_link_capabilities(struct ecore_hwfn *p_hwfn)
{
 if (!p_hwfn || !p_hwfn->mcp_info)
  return OSAL_NULL;
 return &p_hwfn->mcp_info->link_capabilities;
}
