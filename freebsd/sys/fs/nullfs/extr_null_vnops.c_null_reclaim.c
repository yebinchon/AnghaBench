
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int v_writecount; int v_lock; int * v_vnlock; int * v_object; int * v_data; } ;
struct null_node {int null_flags; struct vnode* null_lowervp; } ;


 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int M_NULLFSNODE ;
 int NULLV_NOUNLOCK ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int VOP_ADD_WRITECOUNT (struct vnode*,int ) ;
 struct null_node* VTONULL (struct vnode*) ;
 int free (struct null_node*,int ) ;
 int lockmgr (int *,int ,int *) ;
 int null_hashrem (struct null_node*) ;
 int vput (struct vnode*) ;
 int vunref (struct vnode*) ;

__attribute__((used)) static int
null_reclaim(struct vop_reclaim_args *ap)
{
 struct vnode *vp;
 struct null_node *xp;
 struct vnode *lowervp;

 vp = ap->a_vp;
 xp = VTONULL(vp);
 lowervp = xp->null_lowervp;

 KASSERT(lowervp != ((void*)0) && vp->v_vnlock != &vp->v_lock,
     ("Reclaiming incomplete null vnode %p", vp));

 null_hashrem(xp);




 lockmgr(&vp->v_lock, LK_EXCLUSIVE, ((void*)0));
 VI_LOCK(vp);
 vp->v_data = ((void*)0);
 vp->v_object = ((void*)0);
 vp->v_vnlock = &vp->v_lock;






 if (vp->v_writecount > 0)
  VOP_ADD_WRITECOUNT(lowervp, -vp->v_writecount);
 else if (vp->v_writecount < 0)
  vp->v_writecount = 0;

 VI_UNLOCK(vp);

 if ((xp->null_flags & NULLV_NOUNLOCK) != 0)
  vunref(lowervp);
 else
  vput(lowervp);
 free(xp, M_NULLFSNODE);

 return (0);
}
