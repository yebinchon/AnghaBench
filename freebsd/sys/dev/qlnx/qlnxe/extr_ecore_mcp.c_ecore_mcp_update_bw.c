
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct public_func {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_function_info {int bandwidth_max; int bandwidth_min; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; int p_dev; } ;
struct TYPE_2__ {int link_lock; struct ecore_mcp_function_info func_info; } ;


 int DRV_MSG_CODE_BW_UPDATE_ACK ;
 int MCP_PF_ID (struct ecore_hwfn*) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_configure_pf_max_bandwidth (int ,int ) ;
 int ecore_configure_pf_min_bandwidth (int ,int ) ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;
 int ecore_mcp_get_shmem_func (struct ecore_hwfn*,struct ecore_ptt*,struct public_func*,int ) ;
 int ecore_read_pf_bandwidth (struct ecore_hwfn*,struct public_func*) ;

__attribute__((used)) static void
ecore_mcp_update_bw(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 struct ecore_mcp_function_info *p_info;
 struct public_func shmem_info;
 u32 resp = 0, param = 0;

 OSAL_SPIN_LOCK(&p_hwfn->mcp_info->link_lock);

 ecore_mcp_get_shmem_func(p_hwfn, p_ptt, &shmem_info,
     MCP_PF_ID(p_hwfn));

 ecore_read_pf_bandwidth(p_hwfn, &shmem_info);

 p_info = &p_hwfn->mcp_info->func_info;

 ecore_configure_pf_min_bandwidth(p_hwfn->p_dev, p_info->bandwidth_min);

 ecore_configure_pf_max_bandwidth(p_hwfn->p_dev, p_info->bandwidth_max);

 OSAL_SPIN_UNLOCK(&p_hwfn->mcp_info->link_lock);


 ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_BW_UPDATE_ACK, 0, &resp,
        &param);
}
