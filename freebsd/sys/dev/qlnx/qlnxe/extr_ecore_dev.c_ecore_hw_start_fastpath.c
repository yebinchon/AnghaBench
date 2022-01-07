
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rdma_prs_search_reg; scalar_t__ b_rdma_enabled_in_prs; TYPE_1__* p_rdma_info; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ active; } ;


 int ECORE_AGAIN ;
 int ECORE_SUCCESS ;
 scalar_t__ IS_VF (int ) ;
 int NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum _ecore_status_t ecore_hw_start_fastpath(struct ecore_hwfn *p_hwfn)
{
 struct ecore_ptt *p_ptt;

 if (IS_VF(p_hwfn->p_dev))
  return ECORE_SUCCESS;

 p_ptt = ecore_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return ECORE_AGAIN;




 if (p_hwfn->p_rdma_info &&
     p_hwfn->p_rdma_info->active &&
     p_hwfn->b_rdma_enabled_in_prs)
  ecore_wr(p_hwfn, p_ptt, p_hwfn->rdma_prs_search_reg, 0x1);


 ecore_wr(p_hwfn, p_ptt,
   NIG_REG_RX_LLH_BRB_GATE_DNTFWD_PERPF, 0x0);
 ecore_ptt_release(p_hwfn, p_ptt);

 return ECORE_SUCCESS;
}
