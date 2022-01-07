
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int v_iflag; struct mount* v_mount; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {struct vnode* p_textvp; } ;


 int ENOENT ;
 int EPERM ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MBF_NOWAIT ;
 int TAILQ_INSERT_HEAD (int *,struct mount*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct mount*,int ) ;
 int TAILQ_REMOVE (int *,struct mount*,int ) ;
 int VI_DOOMED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 TYPE_1__* curproc ;
 TYPE_1__* initproc ;
 int mnt_list ;
 int mountcheckdirs (struct vnode*,struct vnode*) ;
 int mountlist ;
 int mountlist_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct mount* rootdevmp ;
 struct vnode* rootvnode ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_mountroot () ;
 int vfs_ref (struct mount*) ;
 int vfs_rel (struct mount*) ;
 int vfs_unbusy (struct mount*) ;
 int vfs_unmountall () ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
kern_reroot(void)
{
 struct vnode *oldrootvnode, *vp;
 struct mount *mp, *devmp;
 int error;

 if (curproc != initproc)
  return (EPERM);





 vp = curproc->p_textvp;
 error = vn_lock(vp, LK_SHARED);
 if (error != 0)
  return (error);
 mp = vp->v_mount;
 error = vfs_busy(mp, MBF_NOWAIT);
 if (error != 0) {
  vfs_ref(mp);
  VOP_UNLOCK(vp, 0);
  error = vfs_busy(mp, 0);
  vn_lock(vp, LK_SHARED | LK_RETRY);
  vfs_rel(mp);
  if (error != 0) {
   VOP_UNLOCK(vp, 0);
   return (ENOENT);
  }
  if (vp->v_iflag & VI_DOOMED) {
   VOP_UNLOCK(vp, 0);
   vfs_unbusy(mp);
   return (ENOENT);
  }
 }
 VOP_UNLOCK(vp, 0);
 vfs_ref(rootdevmp);
 devmp = rootdevmp;
 rootdevmp = ((void*)0);

 mtx_lock(&mountlist_mtx);
 TAILQ_REMOVE(&mountlist, mp, mnt_list);
 TAILQ_REMOVE(&mountlist, devmp, mnt_list);
 mtx_unlock(&mountlist_mtx);

 oldrootvnode = rootvnode;




 vfs_unmountall();




 mtx_lock(&mountlist_mtx);
 TAILQ_INSERT_HEAD(&mountlist, devmp, mnt_list);
 mtx_unlock(&mountlist_mtx);
 rootdevmp = devmp;
 vfs_rel(rootdevmp);




 vfs_mountroot();




 mountcheckdirs(oldrootvnode, rootvnode);




 mtx_lock(&mountlist_mtx);
 TAILQ_INSERT_TAIL(&mountlist, mp, mnt_list);
 mtx_unlock(&mountlist_mtx);
 vfs_unbusy(mp);

 return (0);
}
