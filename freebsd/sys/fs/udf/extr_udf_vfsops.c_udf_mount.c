
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vfsoptlist {int dummy; } ;
struct udf_mnt {int im_flags; int im_l2d; int im_d2l; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct mount {int mnt_flag; struct vfsoptlist* mnt_optnew; } ;
struct TYPE_2__ {int (* open ) (char*,char*,int *) ;} ;


 int EINVAL ;
 int ENOTSUP ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_RDONLY ;
 int MNT_ROOTFS ;
 int MNT_UPDATE ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,struct thread*) ;
 int PRIV_VFS_MOUNT_PERM ;
 int UDFMNT_KICONV ;
 int UIO_SYSSPACE ;
 struct udf_mnt* VFSTOUDFFS (struct mount*) ;
 int VOP_ACCESS (struct vnode*,int ,int ,struct thread*) ;
 int VREAD ;
 struct thread* curthread ;
 int namei (struct nameidata*) ;
 int priv_check (struct thread*,int ) ;
 int stub1 (char*,char*,int *) ;
 int stub2 (char*,char*,int *) ;
 TYPE_1__* udf_iconv ;
 int udf_mountfs (struct vnode*,struct mount*) ;
 int vfs_getopt (struct vfsoptlist*,char*,void**,int*) ;
 int vfs_mountedfrom (struct mount*,char*) ;
 scalar_t__ vn_isdisk (struct vnode*,int*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
udf_mount(struct mount *mp)
{
 struct vnode *devvp;
 struct thread *td;
 struct udf_mnt *imp = ((void*)0);
 struct vfsoptlist *opts;
 char *fspec, *cs_disk, *cs_local;
 int error, len, *udf_flags;
 struct nameidata nd, *ndp = &nd;

 td = curthread;
 opts = mp->mnt_optnew;




 MNT_ILOCK(mp);
 mp->mnt_flag |= MNT_RDONLY;
 MNT_IUNLOCK(mp);





 if (mp->mnt_flag & MNT_ROOTFS)
  return (ENOTSUP);

 fspec = ((void*)0);
 error = vfs_getopt(opts, "from", (void **)&fspec, &len);
 if (!error && fspec[len - 1] != '\0')
  return (EINVAL);

 if (mp->mnt_flag & MNT_UPDATE) {
  return (0);
 }


 if (fspec == ((void*)0))
  return (EINVAL);
 NDINIT(ndp, LOOKUP, FOLLOW | LOCKLEAF, UIO_SYSSPACE, fspec, td);
 if ((error = namei(ndp)))
  return (error);
 NDFREE(ndp, NDF_ONLY_PNBUF);
 devvp = ndp->ni_vp;

 if (vn_isdisk(devvp, &error) == 0) {
  vput(devvp);
  return (error);
 }


 error = VOP_ACCESS(devvp, VREAD, td->td_ucred, td);
 if (error)
  error = priv_check(td, PRIV_VFS_MOUNT_PERM);
 if (error) {
  vput(devvp);
  return (error);
 }

 if ((error = udf_mountfs(devvp, mp))) {
  vrele(devvp);
  return (error);
 }

 imp = VFSTOUDFFS(mp);

 udf_flags = ((void*)0);
 error = vfs_getopt(opts, "flags", (void **)&udf_flags, &len);
 if (error || len != sizeof(int))
  return (EINVAL);
 imp->im_flags = *udf_flags;

 if (imp->im_flags & UDFMNT_KICONV && udf_iconv) {
  cs_disk = ((void*)0);
  error = vfs_getopt(opts, "cs_disk", (void **)&cs_disk, &len);
  if (!error && cs_disk[len - 1] != '\0')
   return (EINVAL);
  cs_local = ((void*)0);
  error = vfs_getopt(opts, "cs_local", (void **)&cs_local, &len);
  if (!error && cs_local[len - 1] != '\0')
   return (EINVAL);
  udf_iconv->open(cs_local, cs_disk, &imp->im_d2l);



 }

 vfs_mountedfrom(mp, fspec);
 return 0;
}
