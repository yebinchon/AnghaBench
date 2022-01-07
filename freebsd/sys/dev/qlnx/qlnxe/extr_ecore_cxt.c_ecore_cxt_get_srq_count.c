
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_1__* p_cxt_mngr; } ;
struct TYPE_2__ {int srq_count; } ;



u32 ecore_cxt_get_srq_count(struct ecore_hwfn *p_hwfn)
{
 return p_hwfn->p_cxt_mngr->srq_count;
}
