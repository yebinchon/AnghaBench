
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int port_addr; int public_base; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ) ;
 int ECORE_MSG_SP ;
 int MFW_PORT (struct ecore_hwfn*) ;
 int PUBLIC_PORT ;
 int SECTION_ADDR (int ,int ) ;
 int SECTION_OFFSIZE_ADDR (int ,int ) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

void ecore_mcp_cmd_port_init(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt)
{
 u32 addr = SECTION_OFFSIZE_ADDR(p_hwfn->mcp_info->public_base,
     PUBLIC_PORT);
 u32 mfw_mb_offsize = ecore_rd(p_hwfn, p_ptt, addr);

 p_hwfn->mcp_info->port_addr = SECTION_ADDR(mfw_mb_offsize,
         MFW_PORT(p_hwfn));
 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "port_addr = 0x%x, port_id 0x%02x\n",
     p_hwfn->mcp_info->port_addr, MFW_PORT(p_hwfn));
}
