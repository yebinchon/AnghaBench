
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct ecore_bmap {int dummy; } ;
struct TYPE_2__ {struct ecore_bmap srq_map; struct ecore_bmap xrc_srq_map; } ;



__attribute__((used)) static struct ecore_bmap *ecore_rdma_get_srq_bmap(struct ecore_hwfn *p_hwfn, bool is_xrc)
{
 if (is_xrc)
  return &p_hwfn->p_rdma_info->xrc_srq_map;

 return &p_hwfn->p_rdma_info->srq_map;
}
