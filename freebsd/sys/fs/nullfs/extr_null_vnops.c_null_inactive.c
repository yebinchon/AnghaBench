
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_inactive_args {struct vnode* a_vp; } ;
struct vnode {int * v_object; } ;


 scalar_t__ null_want_recycle (struct vnode*) ;
 int vrecycle (struct vnode*) ;

__attribute__((used)) static int
null_inactive(struct vop_inactive_args *ap)
{
 struct vnode *vp;

 vp = ap->a_vp;
 if (null_want_recycle(vp)) {
  vp->v_object = ((void*)0);
  vrecycle(vp);
 }
 return (0);
}
