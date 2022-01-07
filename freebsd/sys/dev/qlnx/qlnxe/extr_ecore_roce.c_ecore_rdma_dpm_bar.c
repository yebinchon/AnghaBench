
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int db_bar_no_edpm; } ;


 int ecore_rdma_dpm_conf (struct ecore_hwfn*,struct ecore_ptt*) ;

void ecore_rdma_dpm_bar(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 p_hwfn->db_bar_no_edpm = 1;

 ecore_rdma_dpm_conf(p_hwfn, p_ptt);
}
