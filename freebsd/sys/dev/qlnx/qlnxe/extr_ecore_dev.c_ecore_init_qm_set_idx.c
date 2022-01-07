
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ start_pq; } ;
struct ecore_hwfn {TYPE_1__ qm_info; } ;


 scalar_t__* ecore_init_qm_get_idx_from_flags (struct ecore_hwfn*,int ) ;

__attribute__((used)) static void ecore_init_qm_set_idx(struct ecore_hwfn *p_hwfn,
      u32 pq_flags, u16 pq_val)
{
 u16 *base_pq_idx = ecore_init_qm_get_idx_from_flags(p_hwfn, pq_flags);

 *base_pq_idx = p_hwfn->qm_info.start_pq + pq_val;
}
