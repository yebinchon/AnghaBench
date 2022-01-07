
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ecore_hwfn {int dummy; } ;


 scalar_t__ CM_TX_PQ_BASE ;
 scalar_t__* ecore_init_qm_get_idx_from_flags (struct ecore_hwfn*,int ) ;

u16 ecore_get_cm_pq_idx(struct ecore_hwfn *p_hwfn, u32 pq_flags)
{
 u16 *base_pq_idx = ecore_init_qm_get_idx_from_flags(p_hwfn, pq_flags);

 return *base_pq_idx + CM_TX_PQ_BASE;
}
