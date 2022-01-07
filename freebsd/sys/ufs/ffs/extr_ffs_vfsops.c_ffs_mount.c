
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {scalar_t__ v_rdev; } ;
struct ufsmount {int um_fsckpid; int um_cp; struct fs* um_fs; struct vnode* um_devvp; } ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int mnt_flag; int mnt_optnew; int mnt_opt; } ;
struct inode {int dummy; } ;
struct fs {scalar_t__ fs_ronly; scalar_t__ fs_pendingblocks; scalar_t__ fs_pendinginodes; char* fs_fsmnt; int fs_flags; int fs_clean; scalar_t__* fs_snapinum; int fs_fmod; void* fs_mtime; } ;
typedef int pid_t ;
typedef int intmax_t ;
typedef int accmode_t ;


 int EINVAL ;
 int EPERM ;
 int FOLLOW ;
 int FORCECLOSE ;
 int FS_ACLS ;
 int FS_DOSOFTDEP ;
 int FS_NEEDSFSCK ;
 int FS_NFS4ACLS ;
 int FS_SUJ ;
 int FS_UNCLEAN ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LOCKLEAF ;
 int LOOKUP ;
 int MBF_NOWAIT ;
 int MNT_ACLS ;
 int MNT_ASYNC ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_NFS4ACLS ;
 int MNT_RDONLY ;
 int MNT_RELOAD ;
 int MNT_SNAPSHOT ;
 int MNT_UNTRUSTED ;
 int MNT_UPDATE ;
 int MNT_WAIT ;
 scalar_t__ MOUNTEDSOFTDEP (struct mount*) ;
 int MPASS (int) ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,struct thread*) ;
 int PRIV_VFS_MOUNT_PERM ;
 int UIO_SYSSPACE ;
 int UMA_ALIGN_PTR ;
 struct ufsmount* VFSTOUFS (struct mount*) ;
 int VOP_ACCESS (struct vnode*,int,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREAD ;
 int VWRITE ;
 int V_WAIT ;
 int WRITECLOSE ;
 struct thread* curthread ;
 int ffs_flushfiles (struct mount*,int,struct thread*) ;
 int ffs_mountfs (struct vnode*,struct mount*,struct thread*) ;
 int ffs_opts ;
 int ffs_reload (struct mount*,struct thread*,int ) ;
 int ffs_sbupdate (struct ufsmount*,int ,int ) ;
 int ffs_snapshot (struct mount*,char*) ;
 int ffs_snapshot_mount (struct mount*) ;
 int g_access (int ,int ,int,int) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int namei (struct nameidata*) ;
 int printf (char*,char*,...) ;
 int priv_check (struct thread*,int ) ;
 int softdep_flushfiles (struct mount*,int,struct thread*) ;
 int softdep_mount (struct vnode*,struct mount*,struct fs*,int ) ;
 int softdep_unmount (struct mount*) ;
 void* time_second ;
 int * uma_inode ;
 void* uma_ufs1 ;
 void* uma_ufs2 ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_deleteopt (int ,char*) ;
 scalar_t__ vfs_filteropt (int ,int ) ;
 scalar_t__ vfs_flagopt (int ,char*,int *,int ) ;
 scalar_t__ vfs_getopt (int ,char*,int *,int *) ;
 char* vfs_getopts (int ,char*,int*) ;
 int vfs_mount_error (struct mount*,char*,...) ;
 int vfs_mountedfrom (struct mount*,char*) ;
 int vfs_scanopt (int ,char*,char*,int*) ;
 int vfs_unbusy (struct mount*) ;
 int vfs_write_resume (struct mount*,int ) ;
 int vfs_write_suspend_umnt (struct mount*) ;
 int vn_isdisk (struct vnode*,int*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (int *,struct mount**,int ) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
ffs_mount(struct mount *mp)
{
 struct vnode *devvp;
 struct thread *td;
 struct ufsmount *ump = ((void*)0);
 struct fs *fs;
 pid_t fsckpid = 0;
 int error, error1, flags;
 uint64_t mntorflags, saved_mnt_flag;
 accmode_t accmode;
 struct nameidata ndp;
 char *fspec;

 td = curthread;
 if (vfs_filteropt(mp->mnt_optnew, ffs_opts))
  return (EINVAL);
 if (uma_inode == ((void*)0)) {
  uma_inode = uma_zcreate("FFS inode",
      sizeof(struct inode), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      UMA_ALIGN_PTR, 0);
  uma_ufs1 = uma_zcreate("FFS1 dinode",
      sizeof(struct ufs1_dinode), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      UMA_ALIGN_PTR, 0);
  uma_ufs2 = uma_zcreate("FFS2 dinode",
      sizeof(struct ufs2_dinode), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      UMA_ALIGN_PTR, 0);
 }

 vfs_deleteopt(mp->mnt_optnew, "groupquota");
 vfs_deleteopt(mp->mnt_optnew, "userquota");

 fspec = vfs_getopts(mp->mnt_optnew, "from", &error);
 if (error)
  return (error);

 mntorflags = 0;
 if (vfs_getopt(mp->mnt_optnew, "untrusted", ((void*)0), ((void*)0)) == 0)
  mntorflags |= MNT_UNTRUSTED;

 if (vfs_getopt(mp->mnt_optnew, "acls", ((void*)0), ((void*)0)) == 0)
  mntorflags |= MNT_ACLS;

 if (vfs_getopt(mp->mnt_optnew, "snapshot", ((void*)0), ((void*)0)) == 0) {
  mntorflags |= MNT_SNAPSHOT;




  vfs_deleteopt(mp->mnt_optnew, "snapshot");
  vfs_deleteopt(mp->mnt_opt, "snapshot");
 }

 if (vfs_getopt(mp->mnt_optnew, "fsckpid", ((void*)0), ((void*)0)) == 0 &&
     vfs_scanopt(mp->mnt_optnew, "fsckpid", "%d", &fsckpid) == 1) {




  vfs_deleteopt(mp->mnt_optnew, "fsckpid");
  vfs_deleteopt(mp->mnt_opt, "fsckpid");
  if (mp->mnt_flag & MNT_UPDATE) {
   if (VFSTOUFS(mp)->um_fs->fs_ronly == 0 &&
        vfs_flagopt(mp->mnt_optnew, "ro", ((void*)0), 0) == 0) {
    vfs_mount_error(mp,
        "Checker enable: Must be read-only");
    return (EINVAL);
   }
  } else if (vfs_flagopt(mp->mnt_optnew, "ro", ((void*)0), 0) == 0) {
   vfs_mount_error(mp,
       "Checker enable: Must be read-only");
   return (EINVAL);
  }

  if (fsckpid == 0)
   fsckpid = -1;
 }

 if (vfs_getopt(mp->mnt_optnew, "nfsv4acls", ((void*)0), ((void*)0)) == 0) {
  if (mntorflags & MNT_ACLS) {
   vfs_mount_error(mp,
       "\"acls\" and \"nfsv4acls\" options "
       "are mutually exclusive");
   return (EINVAL);
  }
  mntorflags |= MNT_NFS4ACLS;
 }

 MNT_ILOCK(mp);
 mp->mnt_flag |= mntorflags;
 MNT_IUNLOCK(mp);




 if (mp->mnt_flag & MNT_UPDATE) {
  ump = VFSTOUFS(mp);
  fs = ump->um_fs;
  devvp = ump->um_devvp;
  if (fsckpid == -1 && ump->um_fsckpid > 0) {
   if ((error = ffs_flushfiles(mp, WRITECLOSE, td)) != 0 ||
       (error = ffs_sbupdate(ump, MNT_WAIT, 0)) != 0)
    return (error);
   g_topology_lock();



   error = g_access(ump->um_cp, 0, -1, 0);
   g_topology_unlock();
   ump->um_fsckpid = 0;
  }
  if (fs->fs_ronly == 0 &&
      vfs_flagopt(mp->mnt_optnew, "ro", ((void*)0), 0)) {



   if ((error = vn_start_write(((void*)0), &mp, V_WAIT)) != 0)
    return (error);
   error = vfs_write_suspend_umnt(mp);
   if (error != 0)
    return (error);




   flags = WRITECLOSE;
   if (mp->mnt_flag & MNT_FORCE)
    flags |= FORCECLOSE;
   if (MOUNTEDSOFTDEP(mp)) {
    error = softdep_flushfiles(mp, flags, td);
   } else {
    error = ffs_flushfiles(mp, flags, td);
   }
   if (error) {
    vfs_write_resume(mp, 0);
    return (error);
   }
   if (fs->fs_pendingblocks != 0 ||
       fs->fs_pendinginodes != 0) {
    printf("WARNING: %s Update error: blocks %jd "
        "files %d\n", fs->fs_fsmnt,
        (intmax_t)fs->fs_pendingblocks,
        fs->fs_pendinginodes);
    fs->fs_pendingblocks = 0;
    fs->fs_pendinginodes = 0;
   }
   if ((fs->fs_flags & (FS_UNCLEAN | FS_NEEDSFSCK)) == 0)
    fs->fs_clean = 1;
   if ((error = ffs_sbupdate(ump, MNT_WAIT, 0)) != 0) {
    fs->fs_ronly = 0;
    fs->fs_clean = 0;
    vfs_write_resume(mp, 0);
    return (error);
   }
   if (MOUNTEDSOFTDEP(mp))
    softdep_unmount(mp);
   g_topology_lock();



   g_access(ump->um_cp, 0, -1, -1);
   g_topology_unlock();
   fs->fs_ronly = 1;
   MNT_ILOCK(mp);
   mp->mnt_flag |= MNT_RDONLY;
   MNT_IUNLOCK(mp);




   vfs_write_resume(mp, 0);
  }
  if ((mp->mnt_flag & MNT_RELOAD) &&
      (error = ffs_reload(mp, td, 0)) != 0)
   return (error);
  if (fs->fs_ronly &&
      !vfs_flagopt(mp->mnt_optnew, "ro", ((void*)0), 0)) {



   if (ump->um_fsckpid > 0) {
    vfs_mount_error(mp,
        "Active checker, cannot upgrade to write");
    return (EINVAL);
   }




   vn_lock(devvp, LK_EXCLUSIVE | LK_RETRY);
   error = VOP_ACCESS(devvp, VREAD | VWRITE,
       td->td_ucred, td);
   if (error)
    error = priv_check(td, PRIV_VFS_MOUNT_PERM);
   if (error) {
    VOP_UNLOCK(devvp, 0);
    return (error);
   }
   VOP_UNLOCK(devvp, 0);
   fs->fs_flags &= ~FS_UNCLEAN;
   if (fs->fs_clean == 0) {
    fs->fs_flags |= FS_UNCLEAN;
    if ((mp->mnt_flag & MNT_FORCE) ||
        ((fs->fs_flags &
         (FS_SUJ | FS_NEEDSFSCK)) == 0 &&
         (fs->fs_flags & FS_DOSOFTDEP))) {
     printf("WARNING: %s was not properly "
        "dismounted\n", fs->fs_fsmnt);
    } else {
     vfs_mount_error(mp,
        "R/W mount of %s denied. %s.%s",
        fs->fs_fsmnt,
        "Filesystem is not clean - run fsck",
        (fs->fs_flags & FS_SUJ) == 0 ? "" :
        " Forced mount will invalidate"
        " journal contents");
     return (EPERM);
    }
   }
   g_topology_lock();



   error = g_access(ump->um_cp, 0, 1, 1);
   g_topology_unlock();
   if (error)
    return (error);
   if ((error = vn_start_write(((void*)0), &mp, V_WAIT)) != 0)
    return (error);
   error = vfs_write_suspend_umnt(mp);
   if (error != 0)
    return (error);
   fs->fs_ronly = 0;
   MNT_ILOCK(mp);
   saved_mnt_flag = MNT_RDONLY;
   if (MOUNTEDSOFTDEP(mp) && (mp->mnt_flag &
       MNT_ASYNC) != 0)
    saved_mnt_flag |= MNT_ASYNC;
   mp->mnt_flag &= ~saved_mnt_flag;
   MNT_IUNLOCK(mp);
   fs->fs_mtime = time_second;

   if ((fs->fs_flags & FS_DOSOFTDEP) &&
       (error = softdep_mount(devvp, mp, fs, td->td_ucred))){
    fs->fs_ronly = 1;
    MNT_ILOCK(mp);
    mp->mnt_flag |= saved_mnt_flag;
    MNT_IUNLOCK(mp);
    vfs_write_resume(mp, 0);
    return (error);
   }
   fs->fs_clean = 0;
   if ((error = ffs_sbupdate(ump, MNT_WAIT, 0)) != 0) {
    fs->fs_ronly = 1;
    MNT_ILOCK(mp);
    mp->mnt_flag |= saved_mnt_flag;
    MNT_IUNLOCK(mp);
    vfs_write_resume(mp, 0);
    return (error);
   }
   if (fs->fs_snapinum[0] != 0)
    ffs_snapshot_mount(mp);
   vfs_write_resume(mp, 0);
  }







  if (MOUNTEDSOFTDEP(mp)) {

   MNT_ILOCK(mp);
   mp->mnt_flag &= ~MNT_ASYNC;
   MNT_IUNLOCK(mp);
  }



  if ((fs->fs_flags & FS_ACLS) != 0) {

   MNT_ILOCK(mp);
   mp->mnt_flag |= MNT_ACLS;
   MNT_IUNLOCK(mp);
  }

  if ((fs->fs_flags & FS_NFS4ACLS) != 0) {

   MNT_ILOCK(mp);
   mp->mnt_flag |= MNT_NFS4ACLS;
   MNT_IUNLOCK(mp);
  }




  if (fsckpid > 0) {
   if (ump->um_fsckpid != 0) {
    vfs_mount_error(mp,
        "Active checker already running on %s",
        fs->fs_fsmnt);
    return (EINVAL);
   }
   KASSERT(MOUNTEDSOFTDEP(mp) == 0,
       ("soft updates enabled on read-only file system"));
   g_topology_lock();



   error = g_access(ump->um_cp, 0, 1, 0);
   g_topology_unlock();
   if (error) {
    vfs_mount_error(mp,
        "Checker activation failed on %s",
        fs->fs_fsmnt);
    return (error);
   }
   ump->um_fsckpid = fsckpid;
   if (fs->fs_snapinum[0] != 0)
    ffs_snapshot_mount(mp);
   fs->fs_mtime = time_second;
   fs->fs_fmod = 1;
   fs->fs_clean = 0;
   (void) ffs_sbupdate(ump, MNT_WAIT, 0);
  }




  if (mp->mnt_flag & MNT_SNAPSHOT)
   return (ffs_snapshot(mp, fspec));




  vfs_unbusy(mp);
 }





 NDINIT(&ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, fspec, td);
 error = namei(&ndp);
 if ((mp->mnt_flag & MNT_UPDATE) != 0) {






  error1 = vfs_busy(mp, MBF_NOWAIT);
  MPASS(error1 == 0);
 }
 if (error != 0)
  return (error);
 NDFREE(&ndp, NDF_ONLY_PNBUF);
 devvp = ndp.ni_vp;
 if (!vn_isdisk(devvp, &error)) {
  vput(devvp);
  return (error);
 }





 accmode = VREAD;
 if ((mp->mnt_flag & MNT_RDONLY) == 0)
  accmode |= VWRITE;
 error = VOP_ACCESS(devvp, accmode, td->td_ucred, td);
 if (error)
  error = priv_check(td, PRIV_VFS_MOUNT_PERM);
 if (error) {
  vput(devvp);
  return (error);
 }

 if (mp->mnt_flag & MNT_UPDATE) {







  if (devvp->v_rdev != ump->um_devvp->v_rdev)
   error = EINVAL;
  vput(devvp);
  if (error)
   return (error);
 } else {
  if ((error = ffs_mountfs(devvp, mp, td)) != 0) {
   vrele(devvp);
   return (error);
  }
  if (fsckpid > 0) {
   KASSERT(MOUNTEDSOFTDEP(mp) == 0,
       ("soft updates enabled on read-only file system"));
   ump = VFSTOUFS(mp);
   fs = ump->um_fs;
   g_topology_lock();



   error = g_access(ump->um_cp, 0, 1, 0);
   g_topology_unlock();
   if (error) {
    printf("WARNING: %s: Checker activation "
        "failed\n", fs->fs_fsmnt);
   } else {
    ump->um_fsckpid = fsckpid;
    if (fs->fs_snapinum[0] != 0)
     ffs_snapshot_mount(mp);
    fs->fs_mtime = time_second;
    fs->fs_clean = 0;
    (void) ffs_sbupdate(ump, MNT_WAIT, 0);
   }
  }
 }
 vfs_mountedfrom(mp, fspec);
 return (0);
}
