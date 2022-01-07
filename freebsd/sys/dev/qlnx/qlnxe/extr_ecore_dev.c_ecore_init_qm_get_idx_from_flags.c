
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ecore_qm_info {int first_vf_pq; int low_latency_pq; int offload_pq; int pure_ack_pq; int ooo_pq; int pure_lb_pq; int first_mcos_pq; int first_rl_pq; } ;
struct ecore_hwfn {struct ecore_qm_info qm_info; } ;
typedef int pq_flags ;


 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int OSAL_BITMAP_WEIGHT (unsigned long*,int) ;
 int * OSAL_NULL ;
__attribute__((used)) static u16 *ecore_init_qm_get_idx_from_flags(struct ecore_hwfn *p_hwfn,
          u32 pq_flags)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;


 if (OSAL_BITMAP_WEIGHT((unsigned long *)&pq_flags, sizeof(pq_flags)) > 1)
  goto err;

 switch (pq_flags) {
 case 129:
  return &qm_info->first_rl_pq;
 case 132:
  return &qm_info->first_mcos_pq;
 case 134:
  return &qm_info->pure_lb_pq;
 case 130:
  return &qm_info->ooo_pq;
 case 135:
  return &qm_info->pure_ack_pq;
 case 131:
  return &qm_info->offload_pq;
 case 133:
  return &qm_info->low_latency_pq;
 case 128:
  return &qm_info->first_vf_pq;
 default:
  goto err;
 }

err:
 DP_ERR(p_hwfn, "BAD pq flags %d\n", pq_flags);
 return OSAL_NULL;
}
