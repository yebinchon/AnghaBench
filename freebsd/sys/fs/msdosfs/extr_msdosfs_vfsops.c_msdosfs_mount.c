
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct msdosfsmount {int pm_flags; int pm_fmod; int pm_inusemap; struct vnode* pm_devvp; int pm_cp; } ;
struct mount {int mnt_flag; int mnt_optnew; } ;
typedef int accmode_t ;


 int EINVAL ;
 int FOLLOW ;
 int FORCECLOSE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LOCKLEAF ;
 int LOOKUP ;
 int MNT_FORCE ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_RDONLY ;
 int MNT_UPDATE ;
 int MNT_WAIT ;
 int MSDOSFSMNT_RONLY ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,struct thread*) ;
 int PRIV_VFS_MOUNT_PERM ;
 int UIO_SYSSPACE ;
 struct msdosfsmount* VFSTOMSDOSFS (struct mount*) ;
 int VFS_SYNC (struct mount*,int ) ;
 int VOP_ACCESS (struct vnode*,int,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREAD ;
 int VWRITE ;
 int WRITECLOSE ;
 struct thread* curthread ;
 int g_access (int ,int ,int,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int markvoldirty (struct msdosfsmount*,int) ;
 int markvoldirty_upgrade (struct msdosfsmount*,int,int) ;
 int mountmsdosfs (struct vnode*,struct mount*) ;
 int msdosfs_opts ;
 int msdosfs_unmount (struct mount*,int) ;
 int namei (struct nameidata*) ;
 int printf (char*,struct mount*,struct msdosfsmount*,int ) ;
 int priv_check (struct thread*,int ) ;
 int update_mp (struct mount*,struct thread*) ;
 int vflush (struct mount*,int ,int,struct thread*) ;
 scalar_t__ vfs_filteropt (int ,int ) ;
 scalar_t__ vfs_flagopt (int ,char*,int *,int ) ;
 scalar_t__ vfs_getopt (int ,char*,void**,int *) ;
 int vfs_mountedfrom (struct mount*,char*) ;
 int vn_isdisk (struct vnode*,int*) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
msdosfs_mount(struct mount *mp)
{
 struct vnode *devvp;
 struct thread *td;

 struct msdosfsmount *pmp = ((void*)0);
 struct nameidata ndp;
 int error, flags;
 accmode_t accmode;
 char *from;

 td = curthread;
 if (vfs_filteropt(mp->mnt_optnew, msdosfs_opts))
  return (EINVAL);





 if (mp->mnt_flag & MNT_UPDATE) {
  pmp = VFSTOMSDOSFS(mp);
  if (!(pmp->pm_flags & MSDOSFSMNT_RONLY) &&
      vfs_flagopt(mp->mnt_optnew, "ro", ((void*)0), 0)) {
   error = VFS_SYNC(mp, MNT_WAIT);
   if (error)
    return (error);
   flags = WRITECLOSE;
   if (mp->mnt_flag & MNT_FORCE)
    flags |= FORCECLOSE;
   error = vflush(mp, 0, flags, td);
   if (error)
    return (error);





   error = markvoldirty(pmp, 0);
   if (error) {
    (void)markvoldirty(pmp, 1);
    return (error);
   }


   g_topology_lock();
   error = g_access(pmp->pm_cp, 0, -1, 0);
   g_topology_unlock();
   if (error) {
    (void)markvoldirty(pmp, 1);
    return (error);
   }





   pmp->pm_fmod = 0;
   pmp->pm_flags |= MSDOSFSMNT_RONLY;
   MNT_ILOCK(mp);
   mp->mnt_flag |= MNT_RDONLY;
   MNT_IUNLOCK(mp);
  } else if ((pmp->pm_flags & MSDOSFSMNT_RONLY) &&
      !vfs_flagopt(mp->mnt_optnew, "ro", ((void*)0), 0)) {




   devvp = pmp->pm_devvp;
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
   g_topology_lock();
   error = g_access(pmp->pm_cp, 0, 1, 0);
   g_topology_unlock();
   if (error)
    return (error);


   error = markvoldirty_upgrade(pmp, 1, 1);
   if (error) {




    g_topology_lock();
    (void)g_access(pmp->pm_cp, 0, -1, 0);
    g_topology_unlock();

    return (error);
   }

   pmp->pm_fmod = 1;
   pmp->pm_flags &= ~MSDOSFSMNT_RONLY;
   MNT_ILOCK(mp);
   mp->mnt_flag &= ~MNT_RDONLY;
   MNT_IUNLOCK(mp);
  }
 }




 if (vfs_getopt(mp->mnt_optnew, "from", (void **)&from, ((void*)0)))
  return (EINVAL);
 NDINIT(&ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, from, td);
 error = namei(&ndp);
 if (error)
  return (error);
 devvp = ndp.ni_vp;
 NDFREE(&ndp, NDF_ONLY_PNBUF);

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
 if ((mp->mnt_flag & MNT_UPDATE) == 0) {
  error = mountmsdosfs(devvp, mp);



 } else {
  vput(devvp);
  if (devvp != pmp->pm_devvp)
   return (EINVAL);
 }
 if (error) {
  vrele(devvp);
  return (error);
 }

 error = update_mp(mp, td);
 if (error) {
  if ((mp->mnt_flag & MNT_UPDATE) == 0)
   msdosfs_unmount(mp, MNT_FORCE);
  return error;
 }

 vfs_mountedfrom(mp, from);



 return (0);
}
