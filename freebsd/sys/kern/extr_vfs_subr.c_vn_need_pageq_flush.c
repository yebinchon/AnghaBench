
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; struct vm_object* v_object; } ;
struct vm_object {int dummy; } ;


 int MPASS (int ) ;
 int VI_MTX (struct vnode*) ;
 int VV_NOSYNC ;
 int mtx_owned (int ) ;
 scalar_t__ vm_object_mightbedirty (struct vm_object*) ;

int
vn_need_pageq_flush(struct vnode *vp)
{
 struct vm_object *obj;
 int need;

 MPASS(mtx_owned(VI_MTX(vp)));
 need = 0;
 if ((obj = vp->v_object) != ((void*)0) && (vp->v_vflag & VV_NOSYNC) == 0 &&
     vm_object_mightbedirty(obj))
  need = 1;
 return (need);
}
