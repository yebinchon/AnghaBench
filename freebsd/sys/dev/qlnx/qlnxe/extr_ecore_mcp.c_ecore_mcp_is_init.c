
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int public_base; } ;



bool ecore_mcp_is_init(struct ecore_hwfn *p_hwfn)
{
 if (!p_hwfn->mcp_info || !p_hwfn->mcp_info->public_base)
  return 0;
 return 1;
}
