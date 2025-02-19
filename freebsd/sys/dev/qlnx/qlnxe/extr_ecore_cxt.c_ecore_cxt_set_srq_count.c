
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ecore_hwfn {struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {void* xrc_srq_count; void* srq_count; } ;



__attribute__((used)) static void ecore_cxt_set_srq_count(struct ecore_hwfn *p_hwfn,
        u32 num_srqs, u32 num_xrc_srqs)
{
 struct ecore_cxt_mngr *p_mgr = p_hwfn->p_cxt_mngr;

 p_mgr->srq_count = num_srqs;
 p_mgr->xrc_srq_count = num_xrc_srqs;
}
