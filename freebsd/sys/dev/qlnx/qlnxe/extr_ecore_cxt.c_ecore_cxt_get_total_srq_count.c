
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {scalar_t__ xrc_srq_count; int srq_count; } ;


 scalar_t__ ecore_cxt_srqs_per_page (struct ecore_hwfn*) ;

u32 ecore_cxt_get_total_srq_count(struct ecore_hwfn *p_hwfn)
{
 struct ecore_cxt_mngr *p_mgr = p_hwfn->p_cxt_mngr;
 u32 total_srqs;

 total_srqs = p_mgr->srq_count;






 if (p_mgr->xrc_srq_count)
  total_srqs += ecore_cxt_srqs_per_page(p_hwfn);

 return total_srqs;
}
