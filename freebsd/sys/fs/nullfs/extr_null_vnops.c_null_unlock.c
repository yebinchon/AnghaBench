
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_unlock_args {struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct null_node {int dummy; } ;


 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct null_node* VTONULL (struct vnode*) ;
 int vdrop (struct vnode*) ;
 int vholdnz (struct vnode*) ;
 int vop_stdunlock (struct vop_unlock_args*) ;

__attribute__((used)) static int
null_unlock(struct vop_unlock_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct null_node *nn;
 struct vnode *lvp;
 int error;

 nn = VTONULL(vp);
 if (nn != ((void*)0) && (lvp = NULLVPTOLOWERVP(vp)) != ((void*)0)) {
  vholdnz(lvp);
  error = VOP_UNLOCK(lvp, 0);
  vdrop(lvp);
 } else {
  error = vop_stdunlock(ap);
 }

 return (error);
}
