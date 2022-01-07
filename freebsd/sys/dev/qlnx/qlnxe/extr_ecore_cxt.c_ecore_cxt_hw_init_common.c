
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int ecore_cdu_init_common (struct ecore_hwfn*) ;
 int ecore_prs_init_common (struct ecore_hwfn*) ;

void ecore_cxt_hw_init_common(struct ecore_hwfn *p_hwfn)
{

 ecore_cdu_init_common(p_hwfn);
 ecore_prs_init_common(p_hwfn);
}
