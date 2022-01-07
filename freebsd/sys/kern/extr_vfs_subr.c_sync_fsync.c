
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_fsync_args {scalar_t__ a_waitfor; struct vnode* a_vp; } ;
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; struct mount* v_mount; } ;
struct mount {int dummy; } ;


 int BO_LOCK (struct bufobj*) ;
 int BO_UNLOCK (struct bufobj*) ;
 int MBF_NOWAIT ;
 scalar_t__ MNT_LAZY ;
 int MNT_NOWAIT ;
 int TDP_SYNCIO ;
 int VFS_SYNC (struct mount*,scalar_t__) ;
 int V_NOWAIT ;
 int curthread_pflags_restore (int) ;
 int curthread_pflags_set (int ) ;
 int syncdelay ;
 scalar_t__ vfs_busy (struct mount*,int ) ;
 int vfs_msync (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vn_finished_write (struct mount*) ;
 scalar_t__ vn_start_write (int *,struct mount**,int ) ;
 int vn_syncer_add_to_worklist (struct bufobj*,int ) ;
 int vnlru_return_batch (struct mount*) ;

__attribute__((used)) static int
sync_fsync(struct vop_fsync_args *ap)
{
 struct vnode *syncvp = ap->a_vp;
 struct mount *mp = syncvp->v_mount;
 int error, save;
 struct bufobj *bo;




 if (ap->a_waitfor != MNT_LAZY)
  return (0);




 bo = &syncvp->v_bufobj;
 BO_LOCK(bo);
 vn_syncer_add_to_worklist(bo, syncdelay);
 BO_UNLOCK(bo);





 if (vfs_busy(mp, MBF_NOWAIT) != 0)
  return (0);
 if (vn_start_write(((void*)0), &mp, V_NOWAIT) != 0) {
  vfs_unbusy(mp);
  return (0);
 }
 save = curthread_pflags_set(TDP_SYNCIO);




 vnlru_return_batch(mp);
 vfs_msync(mp, MNT_NOWAIT);
 error = VFS_SYNC(mp, MNT_LAZY);
 curthread_pflags_restore(save);
 vn_finished_write(mp);
 vfs_unbusy(mp);
 return (error);
}
