
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_hwfn {TYPE_1__* pf_iov_info; } ;
struct TYPE_2__ {unsigned long long* pending_flr; } ;



bool ecore_iov_is_vf_pending_flr(struct ecore_hwfn *p_hwfn,
     u16 rel_vf_id)
{
 return !!(p_hwfn->pf_iov_info->pending_flr[rel_vf_id / 64] &
    (1ULL << (rel_vf_id % 64)));
}
