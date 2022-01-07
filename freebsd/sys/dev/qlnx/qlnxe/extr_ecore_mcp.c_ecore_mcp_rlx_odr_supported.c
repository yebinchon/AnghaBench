
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int capabilities; } ;


 int FW_MB_PARAM_FEATURE_SUPPORT_RELAXED_ORD ;

bool ecore_mcp_rlx_odr_supported(struct ecore_hwfn *p_hwfn)
{
 return !!(p_hwfn->mcp_info->capabilities &
    FW_MB_PARAM_FEATURE_SUPPORT_RELAXED_ORD);
}
