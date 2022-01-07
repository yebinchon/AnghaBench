
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct vfsconf {int vfc_flags; TYPE_2__* vfc_vfsops; TYPE_1__* vfc_vfsops_sd; } ;
struct thread {int dummy; } ;
struct mount_args {int flags; int data; int path; int type; } ;
struct mntarg {int dummy; } ;
struct TYPE_4__ {int (* vfs_cmount ) (struct mntarg*,int ,int) ;} ;
struct TYPE_3__ {int (* vfs_cmount ) (struct mntarg*,int ,int) ;} ;


 int AUDIT_ARG_FFLAGS (int) ;
 int AUDIT_ARG_TEXT (char*) ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int MFSNAMELEN ;
 int MNAMELEN ;
 int MNT_NOEXEC ;
 int MNT_NOSUID ;
 int MNT_RDONLY ;
 int MNT_ROOTFS ;
 int M_TEMP ;
 int M_WAITOK ;
 int VFCF_SBDRY ;
 int copyinstr (int ,char*,int ,int *) ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 struct mntarg* mount_argb (struct mntarg*,int,char*) ;
 struct mntarg* mount_argsu (struct mntarg*,char*,int ,int ) ;
 int stub1 (struct mntarg*,int ,int) ;
 int stub2 (struct mntarg*,int ,int) ;
 struct vfsconf* vfs_byname_kld (char*,struct thread*,int*) ;

int
sys_mount(struct thread *td, struct mount_args *uap)
{
 char *fstype;
 struct vfsconf *vfsp = ((void*)0);
 struct mntarg *ma = ((void*)0);
 uint64_t flags;
 int error;






 flags = uap->flags;

 AUDIT_ARG_FFLAGS(flags);
 flags &= ~MNT_ROOTFS;

 fstype = malloc(MFSNAMELEN, M_TEMP, M_WAITOK);
 error = copyinstr(uap->type, fstype, MFSNAMELEN, ((void*)0));
 if (error) {
  free(fstype, M_TEMP);
  return (error);
 }

 AUDIT_ARG_TEXT(fstype);
 vfsp = vfs_byname_kld(fstype, td, &error);
 free(fstype, M_TEMP);
 if (vfsp == ((void*)0))
  return (ENOENT);
 if (((vfsp->vfc_flags & VFCF_SBDRY) != 0 &&
     vfsp->vfc_vfsops_sd->vfs_cmount == ((void*)0)) ||
     ((vfsp->vfc_flags & VFCF_SBDRY) == 0 &&
     vfsp->vfc_vfsops->vfs_cmount == ((void*)0)))
  return (EOPNOTSUPP);

 ma = mount_argsu(ma, "fstype", uap->type, MFSNAMELEN);
 ma = mount_argsu(ma, "fspath", uap->path, MNAMELEN);
 ma = mount_argb(ma, flags & MNT_RDONLY, "noro");
 ma = mount_argb(ma, !(flags & MNT_NOSUID), "nosuid");
 ma = mount_argb(ma, !(flags & MNT_NOEXEC), "noexec");

 if ((vfsp->vfc_flags & VFCF_SBDRY) != 0)
  return (vfsp->vfc_vfsops_sd->vfs_cmount(ma, uap->data, flags));
 return (vfsp->vfc_vfsops->vfs_cmount(ma, uap->data, flags));
}
