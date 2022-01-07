
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_1__* p_spq; } ;
struct TYPE_2__ {int cid; } ;



u32 ecore_spq_get_cid(struct ecore_hwfn *p_hwfn)
{
 if (!p_hwfn->p_spq) {
  return 0xffffffff;
 }
 return p_hwfn->p_spq->cid;
}
