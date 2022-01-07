
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_qm_info {int ooo_tc; int num_pqs; } ;
struct ecore_hwfn {struct ecore_qm_info qm_info; } ;


 int PQ_FLAGS_OOO ;
 int PQ_INIT_SHARE_VPORT ;
 int ecore_get_pq_flags (struct ecore_hwfn*) ;
 int ecore_init_qm_pq (struct ecore_hwfn*,struct ecore_qm_info*,int ,int ) ;
 int ecore_init_qm_set_idx (struct ecore_hwfn*,int,int ) ;

__attribute__((used)) static void ecore_init_qm_ooo_pq(struct ecore_hwfn *p_hwfn)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;

 if (!(ecore_get_pq_flags(p_hwfn) & PQ_FLAGS_OOO))
  return;

 ecore_init_qm_set_idx(p_hwfn, PQ_FLAGS_OOO, qm_info->num_pqs);
 ecore_init_qm_pq(p_hwfn, qm_info, qm_info->ooo_tc, PQ_INIT_SHARE_VPORT);
}
