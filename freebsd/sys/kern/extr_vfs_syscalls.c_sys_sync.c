
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sync_args {int dummy; } ;
struct mount {int mnt_flag; } ;


 int MBF_MNTLSTLOCK ;
 int MBF_NOWAIT ;
 int MNT_NOWAIT ;
 int MNT_RDONLY ;
 struct mount* TAILQ_FIRST (int *) ;
 struct mount* TAILQ_NEXT (struct mount*,int ) ;
 int TDP_SYNCIO ;
 int VFS_SYNC (struct mount*,int ) ;
 int V_NOWAIT ;
 int curthread_pflags_restore (int) ;
 int curthread_pflags_set (int ) ;
 int mnt_list ;
 int mountlist ;
 int mountlist_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ vfs_busy (struct mount*,int) ;
 int vfs_msync (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vn_finished_write (struct mount*) ;
 scalar_t__ vn_start_write (int *,struct mount**,int ) ;

int
sys_sync(struct thread *td, struct sync_args *uap)
{
 struct mount *mp, *nmp;
 int save;

 mtx_lock(&mountlist_mtx);
 for (mp = TAILQ_FIRST(&mountlist); mp != ((void*)0); mp = nmp) {
  if (vfs_busy(mp, MBF_NOWAIT | MBF_MNTLSTLOCK)) {
   nmp = TAILQ_NEXT(mp, mnt_list);
   continue;
  }
  if ((mp->mnt_flag & MNT_RDONLY) == 0 &&
      vn_start_write(((void*)0), &mp, V_NOWAIT) == 0) {
   save = curthread_pflags_set(TDP_SYNCIO);
   vfs_msync(mp, MNT_NOWAIT);
   VFS_SYNC(mp, MNT_NOWAIT);
   curthread_pflags_restore(save);
   vn_finished_write(mp);
  }
  mtx_lock(&mountlist_mtx);
  nmp = TAILQ_NEXT(mp, mnt_list);
  vfs_unbusy(mp);
 }
 mtx_unlock(&mountlist_mtx);
 return (0);
}
