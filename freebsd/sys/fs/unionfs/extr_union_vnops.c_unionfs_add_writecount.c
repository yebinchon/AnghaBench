
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_add_writecount_args {scalar_t__ a_inc; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_writecount; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;


 int ETXTBSY ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VNASSERT (int,struct vnode*,char*) ;
 int VOP_ADD_WRITECOUNT (struct vnode*,scalar_t__) ;
 struct unionfs_node* VTOUNIONFS (struct vnode*) ;

__attribute__((used)) static int
unionfs_add_writecount(struct vop_add_writecount_args *ap)
{
 struct vnode *tvp, *vp;
 struct unionfs_node *unp;
 int error;

 vp = ap->a_vp;
 unp = VTOUNIONFS(vp);
 tvp = unp->un_uppervp != ((void*)0) ? unp->un_uppervp : unp->un_lowervp;
 VI_LOCK(vp);

 VNASSERT(vp->v_writecount >= 0, vp, ("wrong null writecount"));
 VNASSERT(vp->v_writecount + ap->a_inc >= 0, vp,
     ("wrong writecount inc %d", ap->a_inc));
 if (tvp != ((void*)0))
  error = VOP_ADD_WRITECOUNT(tvp, ap->a_inc);
 else if (vp->v_writecount < 0)
  error = ETXTBSY;
 else
  error = 0;
 if (error == 0)
  vp->v_writecount += ap->a_inc;
 VI_UNLOCK(vp);
 return (error);
}
