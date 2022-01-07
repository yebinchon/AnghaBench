
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int v_vflag; } ;
struct vfsoptlist {int dummy; } ;
struct vfsconf {int dummy; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;


 int AUDITVNODE1 ;
 int EBUSY ;
 int ENAMETOOLONG ;
 int ENODEV ;
 int FOLLOW ;
 int LOCKLEAF ;
 int LOOKUP ;
 scalar_t__ MFSNAMELEN ;
 scalar_t__ MNAMELEN ;
 int MNT_EXPORTED ;
 int MNT_NOCOVER ;
 int MNT_NOSUID ;
 int MNT_ROOTFS ;
 int MNT_SUIDDIR ;
 int MNT_UPDATE ;
 int MNT_USER ;
 int M_TEMP ;
 int M_WAITOK ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,char*,struct thread*) ;
 int PRIV_VFS_MOUNT ;
 int PRIV_VFS_MOUNT_EXPORTED ;
 int PRIV_VFS_MOUNT_NONUSER ;
 int PRIV_VFS_MOUNT_SUIDDIR ;
 int UIO_SYSSPACE ;
 int VV_ROOT ;
 int free (char*,int ) ;
 scalar_t__ jailed (int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int namei (struct nameidata*) ;
 int priv_check (struct thread*,int ) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ usermount ;
 struct vfsconf* vfs_byname (char const*) ;
 struct vfsconf* vfs_byname_kld (char const*,struct thread*,int*) ;
 int vfs_domount_first (struct thread*,struct vfsconf*,char*,struct vnode*,int,struct vfsoptlist**) ;
 int vfs_domount_update (struct thread*,struct vnode*,int,struct vfsoptlist**) ;
 int vn_path_to_global_path (struct thread*,struct vnode*,char*,scalar_t__) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
vfs_domount(
 struct thread *td,
 const char *fstype,
 char *fspath,
 uint64_t fsflags,
 struct vfsoptlist **optlist
 )
{
 struct vfsconf *vfsp;
 struct nameidata nd;
 struct vnode *vp;
 char *pathbuf;
 int error;






 if (strlen(fstype) >= MFSNAMELEN || strlen(fspath) >= MNAMELEN)
  return (ENAMETOOLONG);

 if (jailed(td->td_ucred) || usermount == 0) {
  if ((error = priv_check(td, PRIV_VFS_MOUNT)) != 0)
   return (error);
 }




 if (fsflags & MNT_EXPORTED) {
  error = priv_check(td, PRIV_VFS_MOUNT_EXPORTED);
  if (error)
   return (error);
 }
 if (fsflags & MNT_SUIDDIR) {
  error = priv_check(td, PRIV_VFS_MOUNT_SUIDDIR);
  if (error)
   return (error);
 }



 if ((fsflags & (MNT_NOSUID | MNT_USER)) != (MNT_NOSUID | MNT_USER)) {
  if (priv_check(td, PRIV_VFS_MOUNT_NONUSER) != 0)
   fsflags |= MNT_NOSUID | MNT_USER;
 }


 vfsp = ((void*)0);
 if ((fsflags & MNT_UPDATE) == 0) {

  if (fsflags & MNT_ROOTFS)
   vfsp = vfs_byname(fstype);
  else
   vfsp = vfs_byname_kld(fstype, td, &error);
  if (vfsp == ((void*)0))
   return (ENODEV);
 }




 NDINIT(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1,
     UIO_SYSSPACE, fspath, td);
 error = namei(&nd);
 if (error != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vp = nd.ni_vp;
 if ((fsflags & MNT_UPDATE) == 0) {
  if ((vp->v_vflag & VV_ROOT) != 0 &&
      (fsflags & MNT_NOCOVER) != 0) {
   vput(vp);
   return (EBUSY);
  }
  pathbuf = malloc(MNAMELEN, M_TEMP, M_WAITOK);
  strcpy(pathbuf, fspath);
  error = vn_path_to_global_path(td, vp, pathbuf, MNAMELEN);

  if (error == 0 || error == ENODEV) {
   error = vfs_domount_first(td, vfsp, pathbuf, vp,
       fsflags, optlist);
  }
  free(pathbuf, M_TEMP);
 } else
  error = vfs_domount_update(td, vp, fsflags, optlist);

 return (error);
}
