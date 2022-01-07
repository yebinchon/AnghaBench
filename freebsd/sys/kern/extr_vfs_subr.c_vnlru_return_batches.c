
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsops {int dummy; } ;
struct mount {scalar_t__ mnt_tmpfreevnodelistsize; struct vfsops* mnt_op; } ;


 int MBF_MNTLSTLOCK ;
 int MBF_NOWAIT ;
 struct mount* TAILQ_FIRST (int *) ;
 struct mount* TAILQ_NEXT (struct mount*,int ) ;
 int mnt_list ;
 int mountlist ;
 int mountlist_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ vfs_busy (struct mount*,int) ;
 int vfs_unbusy (struct mount*) ;
 int vnlru_return_batch (struct mount*) ;

__attribute__((used)) static void
vnlru_return_batches(struct vfsops *mnt_op)
{
 struct mount *mp, *nmp;
 bool need_unbusy;

 mtx_lock(&mountlist_mtx);
 for (mp = TAILQ_FIRST(&mountlist); mp != ((void*)0); mp = nmp) {
  need_unbusy = 0;
  if (mnt_op != ((void*)0) && mp->mnt_op != mnt_op)
   goto next;
  if (mp->mnt_tmpfreevnodelistsize == 0)
   goto next;
  if (vfs_busy(mp, MBF_NOWAIT | MBF_MNTLSTLOCK) == 0) {
   vnlru_return_batch(mp);
   need_unbusy = 1;
   mtx_lock(&mountlist_mtx);
  }
next:
  nmp = TAILQ_NEXT(mp, mnt_list);
  if (need_unbusy)
   vfs_unbusy(mp);
 }
 mtx_unlock(&mountlist_mtx);
}
