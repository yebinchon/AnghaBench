
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int b_rdma_enabled_in_prs; int rdma_prs_search_reg; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int PRS_REG_SEARCH_TCP ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum _ecore_status_t
ecore_iwarp_init_hw(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 p_hwfn->rdma_prs_search_reg = PRS_REG_SEARCH_TCP;
 ecore_wr(p_hwfn, p_ptt, p_hwfn->rdma_prs_search_reg, 1);
 p_hwfn->b_rdma_enabled_in_prs = 1;

 return 0;
}
