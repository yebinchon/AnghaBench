
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int p_dpc_ptt; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (int ,char*,int ) ;
 int ECORE_SUCCESS ;
 int MCP_REG_CPU_EVENT_MASK ;
 int MCP_REG_CPU_STATE ;
 int ecore_rd (struct ecore_hwfn*,int ,int ) ;
 int ecore_wr (struct ecore_hwfn*,int ,int ,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_mcp_attn_cb(struct ecore_hwfn *p_hwfn)
{
 u32 tmp = ecore_rd(p_hwfn, p_hwfn->p_dpc_ptt, MCP_REG_CPU_STATE);

 DP_INFO(p_hwfn->p_dev, "MCP_REG_CPU_STATE: %08x - Masking...\n",
  tmp);
 ecore_wr(p_hwfn, p_hwfn->p_dpc_ptt, MCP_REG_CPU_EVENT_MASK,
   0xffffffff);

 return ECORE_SUCCESS;
}
