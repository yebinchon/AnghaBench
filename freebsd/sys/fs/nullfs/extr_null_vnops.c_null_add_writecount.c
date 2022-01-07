
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_add_writecount_args {scalar_t__ a_inc; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_writecount; } ;


 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VNASSERT (int,struct vnode*,char*) ;
 int VOP_ADD_WRITECOUNT (struct vnode*,scalar_t__) ;

__attribute__((used)) static int
null_add_writecount(struct vop_add_writecount_args *ap)
{
 struct vnode *lvp, *vp;
 int error;

 vp = ap->a_vp;
 lvp = NULLVPTOLOWERVP(vp);
 VI_LOCK(vp);

 VNASSERT(vp->v_writecount >= 0, vp, ("wrong null writecount"));
 VNASSERT(vp->v_writecount + ap->a_inc >= 0, vp,
     ("wrong writecount inc %d", ap->a_inc));
 error = VOP_ADD_WRITECOUNT(lvp, ap->a_inc);
 if (error == 0)
  vp->v_writecount += ap->a_inc;
 VI_UNLOCK(vp);
 return (error);
}
