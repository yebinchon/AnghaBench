
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_advise_args {int a_advice; int a_end; int a_start; struct vnode* a_vp; } ;
struct bufobj {int bo_bsize; int bo_dirty; int bo_clean; } ;
struct vnode {int v_iflag; struct bufobj v_bufobj; int * v_object; } ;
typedef int off_t ;
typedef int daddr_t ;


 int BO_RLOCK (struct bufobj*) ;
 int BO_RUNLOCK (struct bufobj*) ;
 int EINVAL ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int OFF_TO_IDX (int) ;


 int VI_DOOMED ;
 int VM_OBJECT_RLOCK (int *) ;
 int VM_OBJECT_RUNLOCK (int *) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int bnoreuselist (int *,struct bufobj*,int,int) ;
 int round_page (int) ;
 int rounddown (int ,int) ;
 int roundup (int ,int) ;
 int trunc_page (int) ;
 int vm_object_page_noreuse (int *,int ,int ) ;
 int vn_lock (struct vnode*,int) ;

int
vop_stdadvise(struct vop_advise_args *ap)
{
 struct vnode *vp;
 struct bufobj *bo;
 daddr_t startn, endn;
 off_t bstart, bend, start, end;
 int bsize, error;

 vp = ap->a_vp;
 switch (ap->a_advice) {
 case 128:





  error = 0;
  break;
 case 129:
  error = 0;
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
  if (vp->v_iflag & VI_DOOMED) {
   VOP_UNLOCK(vp, 0);
   break;
  }
  bsize = vp->v_bufobj.bo_bsize;
  bstart = rounddown(ap->a_start, bsize);
  bend = roundup(ap->a_end, bsize);







  if (vp->v_object != ((void*)0)) {
   start = trunc_page(bstart);
   end = round_page(bend);
   VM_OBJECT_RLOCK(vp->v_object);
   vm_object_page_noreuse(vp->v_object, OFF_TO_IDX(start),
       OFF_TO_IDX(end));
   VM_OBJECT_RUNLOCK(vp->v_object);
  }

  bo = &vp->v_bufobj;
  BO_RLOCK(bo);
  startn = bstart / bsize;
  endn = bend / bsize;
  error = bnoreuselist(&bo->bo_clean, bo, startn, endn);
  if (error == 0)
   error = bnoreuselist(&bo->bo_dirty, bo, startn, endn);
  BO_RUNLOCK(bo);
  VOP_UNLOCK(vp, 0);
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
