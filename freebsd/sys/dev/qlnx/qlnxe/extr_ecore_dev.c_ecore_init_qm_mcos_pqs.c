
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ecore_qm_info {int num_pqs; } ;
struct ecore_hwfn {struct ecore_qm_info qm_info; } ;


 int PQ_FLAGS_MCOS ;
 int PQ_INIT_SHARE_VPORT ;
 int ecore_get_pq_flags (struct ecore_hwfn*) ;
 scalar_t__ ecore_init_qm_get_num_tcs (struct ecore_hwfn*) ;
 int ecore_init_qm_pq (struct ecore_hwfn*,struct ecore_qm_info*,scalar_t__,int ) ;
 int ecore_init_qm_set_idx (struct ecore_hwfn*,int,int ) ;

__attribute__((used)) static void ecore_init_qm_mcos_pqs(struct ecore_hwfn *p_hwfn)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;
 u8 tc_idx;

 if (!(ecore_get_pq_flags(p_hwfn) & PQ_FLAGS_MCOS))
  return;

 ecore_init_qm_set_idx(p_hwfn, PQ_FLAGS_MCOS, qm_info->num_pqs);
 for (tc_idx = 0; tc_idx < ecore_init_qm_get_num_tcs(p_hwfn); tc_idx++)
  ecore_init_qm_pq(p_hwfn, qm_info, tc_idx, PQ_INIT_SHARE_VPORT);
}
