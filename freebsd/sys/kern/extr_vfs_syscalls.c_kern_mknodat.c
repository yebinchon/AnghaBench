
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vattr {int va_mode; int va_type; int va_rdev; } ;
struct thread {int td_ucred; TYPE_2__* td_proc; } ;
struct nameidata {struct vnode* ni_dvp; struct vnode* ni_vp; int ni_cnd; } ;
struct mount {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef int dev_t ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int fd_cmask; } ;


 int ALLPERMS ;
 int AUDITVNODE1 ;
 int AUDIT_ARG_DEV (int ) ;
 int AUDIT_ARG_MODE (int) ;
 int CREATE ;
 int EEXIST ;
 int EINVAL ;
 int LOCKPARENT ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOCACHE ;
 int PCATCH ;
 int PRIV_VFS_MKNOD_DEV ;
 int PRIV_VFS_MKNOD_WHT ;
 int SAVENAME ;



 int S_IFMT ;

 int VATTR_NULL (struct vattr*) ;
 int VBLK ;
 int VCHR ;
 int VNOVAL ;
 int VOP_MKNOD (struct vnode*,struct vnode**,int *,struct vattr*) ;
 int VOP_WHITEOUT (struct vnode*,int *,int ) ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int bwillwrite () ;
 int cap_mknodat_rights ;
 int kern_mkfifoat (struct thread*,int,char const*,int,int) ;
 int mac_vnode_check_create (int ,struct vnode*,int *,struct vattr*) ;
 int namei (struct nameidata*) ;
 int panic (char*) ;
 int priv_check (struct thread*,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
kern_mknodat(struct thread *td, int fd, const char *path, enum uio_seg pathseg,
    int mode, dev_t dev)
{
 struct vnode *vp;
 struct mount *mp;
 struct vattr vattr;
 struct nameidata nd;
 int error, whiteout = 0;

 AUDIT_ARG_MODE(mode);
 AUDIT_ARG_DEV(dev);
 switch (mode & S_IFMT) {
 case 130:
 case 131:
  error = priv_check(td, PRIV_VFS_MKNOD_DEV);
  if (error == 0 && dev == VNOVAL)
   error = EINVAL;
  break;
 case 128:
  error = priv_check(td, PRIV_VFS_MKNOD_WHT);
  break;
 case 129:
  if (dev == 0)
   return (kern_mkfifoat(td, fd, path, pathseg, mode));

 default:
  error = EINVAL;
  break;
 }
 if (error != 0)
  return (error);
restart:
 bwillwrite();
 NDINIT_ATRIGHTS(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
     NOCACHE, pathseg, path, fd, &cap_mknodat_rights,
     td);
 if ((error = namei(&nd)) != 0)
  return (error);
 vp = nd.ni_vp;
 if (vp != ((void*)0)) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  if (vp == nd.ni_dvp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  vrele(vp);
  return (EEXIST);
 } else {
  VATTR_NULL(&vattr);
  vattr.va_mode = (mode & ALLPERMS) &
      ~td->td_proc->p_fd->fd_cmask;
  vattr.va_rdev = dev;
  whiteout = 0;

  switch (mode & S_IFMT) {
  case 130:
   vattr.va_type = VCHR;
   break;
  case 131:
   vattr.va_type = VBLK;
   break;
  case 128:
   whiteout = 1;
   break;
  default:
   panic("kern_mknod: invalid mode");
  }
 }
 if (vn_start_write(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  vput(nd.ni_dvp);
  if ((error = vn_start_write(((void*)0), &mp, V_XSLEEP | PCATCH)) != 0)
   return (error);
  goto restart;
 }





 if (error == 0) {
  if (whiteout)
   error = VOP_WHITEOUT(nd.ni_dvp, &nd.ni_cnd, CREATE);
  else {
   error = VOP_MKNOD(nd.ni_dvp, &nd.ni_vp,
      &nd.ni_cnd, &vattr);
   if (error == 0)
    vput(nd.ni_vp);
  }
 }
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vput(nd.ni_dvp);
 vn_finished_write(mp);
 return (error);
}
