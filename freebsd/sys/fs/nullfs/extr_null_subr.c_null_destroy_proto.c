
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_op; int v_lock; int * v_vnlock; int * v_data; } ;


 int LK_EXCLUSIVE ;
 int M_NULLFSNODE ;
 int VI_LOCK (struct vnode*) ;
 int VI_UNLOCK (struct vnode*) ;
 int dead_vnodeops ;
 int free (void*,int ) ;
 int lockmgr (int *,int ,int *) ;
 int vgone (struct vnode*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static void
null_destroy_proto(struct vnode *vp, void *xp)
{

 lockmgr(&vp->v_lock, LK_EXCLUSIVE, ((void*)0));
 VI_LOCK(vp);
 vp->v_data = ((void*)0);
 vp->v_vnlock = &vp->v_lock;
 vp->v_op = &dead_vnodeops;
 VI_UNLOCK(vp);
 vgone(vp);
 vput(vp);
 free(xp, M_NULLFSNODE);
}
