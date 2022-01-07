
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_lock1_args {int a_flags; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct null_node {int dummy; } ;



 int LK_INTERLOCK ;

 int LK_TYPE_MASK ;

 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_LOCK (struct vnode*,int) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct null_node* VTONULL (struct vnode*) ;
 int panic (char*,int const) ;
 int vdrop (struct vnode*) ;
 int vholdnz (struct vnode*) ;
 int vop_stdlock (struct vop_lock1_args*) ;

__attribute__((used)) static int
null_lock(struct vop_lock1_args *ap)
{
 struct vnode *vp = ap->a_vp;
 int flags;
 struct null_node *nn;
 struct vnode *lvp;
 int error;

 if ((ap->a_flags & LK_INTERLOCK) == 0)
  VI_LOCK(vp);
 else
  ap->a_flags &= ~LK_INTERLOCK;
 flags = ap->a_flags;
 nn = VTONULL(vp);





 if (nn != ((void*)0) && (lvp = NULLVPTOLOWERVP(vp)) != ((void*)0)) {
  vholdnz(lvp);
  VI_UNLOCK(vp);
  error = VOP_LOCK(lvp, flags);







  if (VTONULL(vp) == ((void*)0) && error == 0) {
   ap->a_flags &= ~LK_TYPE_MASK;
   switch (flags & LK_TYPE_MASK) {
   case 129:
    ap->a_flags |= 129;
    break;
   case 128:
   case 130:
    ap->a_flags |= 130;
    break;
   default:
    panic("Unsupported lock request %d\n",
        ap->a_flags);
   }
   VOP_UNLOCK(lvp, 0);
   error = vop_stdlock(ap);
  }
  vdrop(lvp);
 } else {
  VI_UNLOCK(vp);
  error = vop_stdlock(ap);
 }

 return (error);
}
