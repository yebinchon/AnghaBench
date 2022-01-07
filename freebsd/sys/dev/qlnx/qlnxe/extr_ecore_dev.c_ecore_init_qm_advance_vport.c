
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_qm_info {scalar_t__ num_vports; } ;
struct ecore_hwfn {struct ecore_qm_info qm_info; } ;


 int DP_ERR (struct ecore_hwfn*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ ecore_init_qm_get_num_vports (struct ecore_hwfn*) ;

__attribute__((used)) static void ecore_init_qm_advance_vport(struct ecore_hwfn *p_hwfn)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;

 qm_info->num_vports++;

 if (qm_info->num_vports > ecore_init_qm_get_num_vports(p_hwfn))
  DP_ERR(p_hwfn, "vport overflow! qm_info->num_vports %d, qm_init_get_num_vports() %d\n", qm_info->num_vports, ecore_init_qm_get_num_vports(p_hwfn));
}
