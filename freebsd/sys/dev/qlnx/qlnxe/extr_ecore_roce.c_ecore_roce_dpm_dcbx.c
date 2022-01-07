
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dcbx_no_edpm; } ;


 scalar_t__ ecore_rdma_allocated_qps (struct ecore_hwfn*) ;
 int ecore_rdma_dpm_conf (struct ecore_hwfn*,struct ecore_ptt*) ;

void ecore_roce_dpm_dcbx(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 u8 val;





 val = (ecore_rdma_allocated_qps(p_hwfn)) ? 1 : 0;
 p_hwfn->dcbx_no_edpm = (u8)val;

 ecore_rdma_dpm_conf(p_hwfn, p_ptt);
}
