
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_llvm_vg {int lv_segs; int vg_lvs; int vg_pvs; } ;
struct g_llvm_segment {int lv_segs; int vg_lvs; int vg_pvs; } ;
struct g_llvm_pv {int lv_segs; int vg_lvs; int vg_pvs; } ;
struct g_llvm_lv {int lv_segs; int vg_lvs; int vg_pvs; } ;


 struct g_llvm_vg* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct g_llvm_vg*,int ) ;
 int M_GLLVM ;
 int free (struct g_llvm_vg*,int ) ;
 int lv_next ;
 int pv_next ;
 int sg_next ;
 int vg_next ;

__attribute__((used)) static void
g_llvm_free_vg(struct g_llvm_vg *vg)
{
 struct g_llvm_pv *pv;
 struct g_llvm_lv *lv;
 struct g_llvm_segment *sg;


 while ((pv = LIST_FIRST(&vg->vg_pvs)) != ((void*)0)) {
  LIST_REMOVE(pv, pv_next);
  free(pv, M_GLLVM);
 }
 while ((lv = LIST_FIRST(&vg->vg_lvs)) != ((void*)0)) {
  while ((sg = LIST_FIRST(&lv->lv_segs)) != ((void*)0)) {
   LIST_REMOVE(sg, sg_next);
   free(sg, M_GLLVM);
  }
  LIST_REMOVE(lv, lv_next);
  free(lv, M_GLLVM);
 }
 LIST_REMOVE(vg, vg_next);
 free(vg, M_GLLVM);
}
