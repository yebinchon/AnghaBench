
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct thread {TYPE_2__* td_ucred; } ;
struct mount {int mnt_flag; int mnt_kern_flag; struct devfs_mount* mnt_data; int * mnt_optnew; } ;
struct devfs_mount {int dm_holdcnt; int dm_lock; int dm_idx; int dm_rootdir; struct mount* dm_mount; } ;
typedef int devfs_rsnum ;
struct TYPE_4__ {TYPE_1__* cr_prison; } ;
struct TYPE_3__ {int pr_devfs_rsnum; } ;


 int DEVFS_ROOTINO ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 int INT_MAX ;
 int LK_EXCLUSIVE ;
 int MNTK_EXTENDED_SHARED ;
 int MNTK_LOOKUP_SHARED ;
 int MNTK_NOMSYNC ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_LOCAL ;
 int MNT_MULTILABEL ;
 int MNT_ROOTFS ;
 int MNT_UPDATE ;
 int M_DEVFS ;
 int M_WAITOK ;
 int M_ZERO ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int alloc_unr (int *) ;
 struct thread* curthread ;
 int devfs_opts ;
 int devfs_root (struct mount*,int ,struct vnode**) ;
 int devfs_ruleset_apply (struct devfs_mount*) ;
 int devfs_ruleset_set (int ,struct devfs_mount*) ;
 int * devfs_unr ;
 int devfs_vmkdir (struct devfs_mount*,int *,int ,int *,int ) ;
 int free (struct devfs_mount*,int ) ;
 int free_unr (int *,int ) ;
 int jailed (TYPE_2__*) ;
 struct devfs_mount* malloc (int,int ,int) ;
 int * new_unrhdr (int ,int ,int *) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vfs_cache_root_set (struct mount*,struct vnode*) ;
 scalar_t__ vfs_filteropt (int *,int ) ;
 scalar_t__ vfs_flagopt (int *,char*,int *,int ) ;
 int vfs_getnewfsid (struct mount*) ;
 scalar_t__ vfs_getopt (int *,char*,int *,int *) ;
 int vfs_mount_error (struct mount*,char*,char*) ;
 int vfs_mountedfrom (struct mount*,char*) ;
 int vfs_scanopt (int *,char*,char*,int*) ;

__attribute__((used)) static int
devfs_mount(struct mount *mp)
{
 int error;
 struct devfs_mount *fmp;
 struct vnode *rvp;
 struct thread *td = curthread;
 int injail, rsnum;

 if (devfs_unr == ((void*)0))
  devfs_unr = new_unrhdr(0, INT_MAX, ((void*)0));

 error = 0;

 if (mp->mnt_flag & MNT_ROOTFS)
  return (EOPNOTSUPP);

 rsnum = 0;
 injail = jailed(td->td_ucred);

 if (mp->mnt_optnew != ((void*)0)) {
  if (vfs_filteropt(mp->mnt_optnew, devfs_opts))
   return (EINVAL);

  if (vfs_flagopt(mp->mnt_optnew, "export", ((void*)0), 0))
   return (EOPNOTSUPP);

  if (vfs_getopt(mp->mnt_optnew, "ruleset", ((void*)0), ((void*)0)) == 0 &&
      (vfs_scanopt(mp->mnt_optnew, "ruleset", "%d",
      &rsnum) != 1 || rsnum < 0 || rsnum > 65535)) {
   vfs_mount_error(mp, "%s",
       "invalid ruleset specification");
   return (EINVAL);
  }

  if (injail && rsnum != 0 &&
      rsnum != td->td_ucred->cr_prison->pr_devfs_rsnum)
   return (EPERM);
 }


 if (injail)
  rsnum = td->td_ucred->cr_prison->pr_devfs_rsnum;

 if (mp->mnt_flag & MNT_UPDATE) {
  if (rsnum != 0) {
   fmp = mp->mnt_data;
   if (fmp != ((void*)0)) {
    sx_xlock(&fmp->dm_lock);
    devfs_ruleset_set((devfs_rsnum)rsnum, fmp);
    devfs_ruleset_apply(fmp);
    sx_xunlock(&fmp->dm_lock);
   }
  }
  return (0);
 }

 fmp = malloc(sizeof *fmp, M_DEVFS, M_WAITOK | M_ZERO);
 fmp->dm_idx = alloc_unr(devfs_unr);
 sx_init(&fmp->dm_lock, "devfsmount");
 fmp->dm_holdcnt = 1;

 MNT_ILOCK(mp);
 mp->mnt_flag |= MNT_LOCAL;
 mp->mnt_kern_flag |= MNTK_LOOKUP_SHARED | MNTK_EXTENDED_SHARED |
     MNTK_NOMSYNC;



 MNT_IUNLOCK(mp);
 fmp->dm_mount = mp;
 mp->mnt_data = (void *) fmp;
 vfs_getnewfsid(mp);

 fmp->dm_rootdir = devfs_vmkdir(fmp, ((void*)0), 0, ((void*)0), DEVFS_ROOTINO);

 error = devfs_root(mp, LK_EXCLUSIVE, &rvp);
 if (error) {
  sx_destroy(&fmp->dm_lock);
  free_unr(devfs_unr, fmp->dm_idx);
  free(fmp, M_DEVFS);
  return (error);
 }

 if (rsnum != 0) {
  sx_xlock(&fmp->dm_lock);
  devfs_ruleset_set((devfs_rsnum)rsnum, fmp);
  sx_xunlock(&fmp->dm_lock);
 }

 VOP_UNLOCK(rvp, 0);
 vfs_cache_root_set(mp, rvp);

 vfs_mountedfrom(mp, "devfs");

 return (0);
}
