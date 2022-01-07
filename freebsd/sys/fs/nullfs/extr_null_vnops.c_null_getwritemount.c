
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getwritemount_args {int ** a_mpp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct null_node {struct vnode* null_lowervp; } ;


 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_GETWRITEMOUNT (struct vnode*,int **) ;
 struct null_node* VTONULL (struct vnode*) ;
 int vdrop (struct vnode*) ;
 int vholdnz (struct vnode*) ;

__attribute__((used)) static int
null_getwritemount(struct vop_getwritemount_args *ap)
{
 struct null_node *xp;
 struct vnode *lowervp;
 struct vnode *vp;

 vp = ap->a_vp;
 VI_LOCK(vp);
 xp = VTONULL(vp);
 if (xp && (lowervp = xp->null_lowervp)) {
  vholdnz(lowervp);
  VI_UNLOCK(vp);
  VOP_GETWRITEMOUNT(lowervp, ap->a_mpp);
  vdrop(lowervp);
 } else {
  VI_UNLOCK(vp);
  *(ap->a_mpp) = ((void*)0);
 }
 return (0);
}
