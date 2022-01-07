
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct public_func {scalar_t__ ovlan_stag; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_6__ {int ovlan; int hw_mode; } ;
struct ecore_hwfn {TYPE_3__ hw_info; TYPE_2__* mcp_info; } ;
struct TYPE_4__ {int ovlan; } ;
struct TYPE_5__ {TYPE_1__ func_info; } ;


 int DORQ_REG_PF_EXT_VID_BB_K2 ;
 int DORQ_REG_TAG1_OVRD_MODE ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,int) ;
 int DRV_MSG_CODE_S_TAG_UPDATE_ACK ;
 int ECORE_HW_INFO_CHANGE_OVLAN ;
 int ECORE_MCP_VLAN_UNSET ;
 int ECORE_MSG_SP ;
 int FUNC_MF_CFG_OV_STAG_MASK ;
 int MCP_PF_ID (struct ecore_hwfn*) ;
 int MODE_MF_SD ;
 int NIG_REG_LLH_FUNC_TAG_VALUE ;
 int OSAL_HW_INFO_CHANGE (struct ecore_hwfn*,int ) ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;
 int ecore_mcp_get_shmem_func (struct ecore_hwfn*,struct ecore_ptt*,struct public_func*,int ) ;
 int ecore_sp_pf_update_stag (struct ecore_hwfn*) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static void ecore_mcp_update_stag(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt)
{
 struct public_func shmem_info;
 u32 resp = 0, param = 0;

 ecore_mcp_get_shmem_func(p_hwfn, p_ptt, &shmem_info,
     MCP_PF_ID(p_hwfn));

 p_hwfn->mcp_info->func_info.ovlan = (u16)shmem_info.ovlan_stag &
       FUNC_MF_CFG_OV_STAG_MASK;
 p_hwfn->hw_info.ovlan = p_hwfn->mcp_info->func_info.ovlan;
 if ((p_hwfn->hw_info.hw_mode & (1 << MODE_MF_SD)) &&
     (p_hwfn->hw_info.ovlan != ECORE_MCP_VLAN_UNSET)) {
  ecore_wr(p_hwfn, p_ptt,
    NIG_REG_LLH_FUNC_TAG_VALUE,
    p_hwfn->hw_info.ovlan);
  ecore_sp_pf_update_stag(p_hwfn);

  ecore_wr(p_hwfn, p_ptt, DORQ_REG_TAG1_OVRD_MODE, 1);
  ecore_wr(p_hwfn, p_ptt, DORQ_REG_PF_EXT_VID_BB_K2,
    p_hwfn->hw_info.ovlan);
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP, "ovlan  = %d hw_mode = 0x%x\n",
     p_hwfn->mcp_info->func_info.ovlan, p_hwfn->hw_info.hw_mode);
 OSAL_HW_INFO_CHANGE(p_hwfn, ECORE_HW_INFO_CHANGE_OVLAN);


 ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_S_TAG_UPDATE_ACK, 0,
        &resp, &param);
}
