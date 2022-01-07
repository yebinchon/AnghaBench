
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int ecore_cdu_init_pf (struct ecore_hwfn*) ;
 int ecore_cm_init_pf (struct ecore_hwfn*) ;
 int ecore_dq_init_pf (struct ecore_hwfn*) ;
 int ecore_ilt_init_pf (struct ecore_hwfn*) ;
 int ecore_prs_init_pf (struct ecore_hwfn*) ;
 int ecore_qm_init_pf (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_src_init_pf (struct ecore_hwfn*) ;
 int ecore_tm_init_pf (struct ecore_hwfn*) ;

void ecore_cxt_hw_init_pf(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
 ecore_qm_init_pf(p_hwfn, p_ptt, 1);
 ecore_cm_init_pf(p_hwfn);
 ecore_dq_init_pf(p_hwfn);
 ecore_cdu_init_pf(p_hwfn);
 ecore_ilt_init_pf(p_hwfn);
 ecore_src_init_pf(p_hwfn);
 ecore_tm_init_pf(p_hwfn);
 ecore_prs_init_pf(p_hwfn);
}
