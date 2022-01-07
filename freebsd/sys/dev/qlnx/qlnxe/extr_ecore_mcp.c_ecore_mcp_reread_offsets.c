
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {scalar_t__ mcp_hist; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__,scalar_t__) ;
 int ECORE_MSG_SP ;
 int MISCS_REG_GENERIC_POR_0 ;
 int ecore_load_mcp_offsets (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_mcp_cmd_port_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 scalar_t__ ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

__attribute__((used)) static void ecore_mcp_reread_offsets(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt)
{
 u32 generic_por_0 = ecore_rd(p_hwfn, p_ptt, MISCS_REG_GENERIC_POR_0);




 if (p_hwfn->mcp_info->mcp_hist != generic_por_0) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
      "Rereading MCP offsets [mcp_hist 0x%08x, generic_por_0 0x%08x]\n",
      p_hwfn->mcp_info->mcp_hist, generic_por_0);

  ecore_load_mcp_offsets(p_hwfn, p_ptt);
  ecore_mcp_cmd_port_init(p_hwfn, p_ptt);
 }
}
