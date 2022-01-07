
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_add_writecount_args {scalar_t__ a_inc; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_writecount; } ;


 int ETXTBSY ;
 int MTX_DUPOK ;
 int VI_LOCK_FLAGS (struct vnode*,int ) ;
 int VI_UNLOCK (struct vnode*) ;
 int VNASSERT (int,struct vnode*,char*) ;

__attribute__((used)) static int
vop_stdadd_writecount(struct vop_add_writecount_args *ap)
{
 struct vnode *vp;
 int error;

 vp = ap->a_vp;
 VI_LOCK_FLAGS(vp, MTX_DUPOK);
 if (vp->v_writecount < 0) {
  error = ETXTBSY;
 } else {
  VNASSERT(vp->v_writecount + ap->a_inc >= 0, vp,
      ("neg writecount increment %d", ap->a_inc));
  vp->v_writecount += ap->a_inc;
  error = 0;
 }
 VI_UNLOCK(vp);
 return (error);
}
