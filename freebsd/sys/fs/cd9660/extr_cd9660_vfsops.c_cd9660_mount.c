
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int mnt_flag; int mnt_optnew; } ;
struct iso_mnt {struct vnode* im_devvp; } ;
typedef int accmode_t ;


 int EINVAL ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_RDONLY ;
 int MNT_UPDATE ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,struct thread*) ;
 int PRIV_VFS_MOUNT_PERM ;
 int UIO_SYSSPACE ;
 struct iso_mnt* VFSTOISOFS (struct mount*) ;
 int VOP_ACCESS (struct vnode*,int ,int ,struct thread*) ;
 int VREAD ;
 struct thread* curthread ;
 int iso_mountfs (struct vnode*,struct mount*) ;
 int namei (struct nameidata*) ;
 int priv_check (struct thread*,int ) ;
 scalar_t__ vfs_flagopt (int ,char*,int *,int ) ;
 char* vfs_getopts (int ,char*,int*) ;
 int vfs_mountedfrom (struct mount*,char*) ;
 int vn_isdisk (struct vnode*,int*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
cd9660_mount(struct mount *mp)
{
 struct vnode *devvp;
 struct thread *td;
 char *fspec;
 int error;
 accmode_t accmode;
 struct nameidata ndp;
 struct iso_mnt *imp = ((void*)0);

 td = curthread;




 MNT_ILOCK(mp);
 mp->mnt_flag |= MNT_RDONLY;
 MNT_IUNLOCK(mp);

 fspec = vfs_getopts(mp->mnt_optnew, "from", &error);
 if (error)
  return (error);

 imp = VFSTOISOFS(mp);

 if (mp->mnt_flag & MNT_UPDATE) {
  if (vfs_flagopt(mp->mnt_optnew, "export", ((void*)0), 0))
   return (0);
 }




 NDINIT(&ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, fspec, td);
 if ((error = namei(&ndp)))
  return (error);
 NDFREE(&ndp, NDF_ONLY_PNBUF);
 devvp = ndp.ni_vp;

 if (!vn_isdisk(devvp, &error)) {
  vput(devvp);
  return (error);
 }





 accmode = VREAD;
 error = VOP_ACCESS(devvp, accmode, td->td_ucred, td);
 if (error)
  error = priv_check(td, PRIV_VFS_MOUNT_PERM);
 if (error) {
  vput(devvp);
  return (error);
 }

 if ((mp->mnt_flag & MNT_UPDATE) == 0) {
  error = iso_mountfs(devvp, mp);
  if (error)
   vrele(devvp);
 } else {
  if (devvp != imp->im_devvp)
   error = EINVAL;
  vput(devvp);
 }
 if (error)
  return (error);
 vfs_mountedfrom(mp, fspec);
 return (0);
}
