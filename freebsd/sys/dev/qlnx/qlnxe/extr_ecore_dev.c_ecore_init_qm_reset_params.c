
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_qm_info {scalar_t__ first_rl_pq; scalar_t__ first_mcos_pq; scalar_t__ first_vf_pq; scalar_t__ num_vf_pqs; scalar_t__ num_pf_rls; scalar_t__ num_vports; scalar_t__ num_pqs; } ;
struct ecore_hwfn {struct ecore_qm_info qm_info; } ;



__attribute__((used)) static void ecore_init_qm_reset_params(struct ecore_hwfn *p_hwfn)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;

 qm_info->num_pqs = 0;
 qm_info->num_vports = 0;
 qm_info->num_pf_rls = 0;
 qm_info->num_vf_pqs = 0;
 qm_info->first_vf_pq = 0;
 qm_info->first_mcos_pq = 0;
 qm_info->first_rl_pq = 0;
}
