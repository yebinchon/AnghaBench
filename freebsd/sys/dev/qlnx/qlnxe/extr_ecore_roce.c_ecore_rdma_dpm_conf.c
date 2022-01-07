
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int db_bar_no_edpm; int dcbx_no_edpm; } ;


 int DORQ_REG_PF_DPM_ENABLE ;
 int DP_VERBOSE (struct ecore_hwfn*,int,char*,int,int ,int ) ;
 int ECORE_MSG_DCB ;
 int ECORE_MSG_RDMA ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static void ecore_rdma_dpm_conf(struct ecore_hwfn *p_hwfn,
    struct ecore_ptt *p_ptt)
{
 u32 val;

 val = (p_hwfn->dcbx_no_edpm || p_hwfn->db_bar_no_edpm) ? 0 : 1;

 ecore_wr(p_hwfn, p_ptt, DORQ_REG_PF_DPM_ENABLE, val);
 DP_VERBOSE(p_hwfn, (ECORE_MSG_DCB | ECORE_MSG_RDMA),
     "Changing DPM_EN state to %d (DCBX=%d, DB_BAR=%d)\n",
     val, p_hwfn->dcbx_no_edpm, p_hwfn->db_bar_no_edpm);
}
