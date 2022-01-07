
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vattr {int va_mode; int va_type; } ;
struct thread {int td_ucred; TYPE_2__* td_proc; } ;
struct nameidata {int * ni_dvp; int * ni_vp; int ni_cnd; } ;
struct mount {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int fd_cmask; } ;


 int ALLPERMS ;
 int AUDITVNODE1 ;
 int AUDIT_ARG_MODE (int) ;
 int CREATE ;
 int EEXIST ;
 int LOCKPARENT ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOCACHE ;
 int PCATCH ;
 int SAVENAME ;
 int VATTR_NULL (struct vattr*) ;
 int VFIFO ;
 int VOP_MKNOD (int *,int **,int *,struct vattr*) ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int bwillwrite () ;
 int cap_mkfifoat_rights ;
 int mac_vnode_check_create (int ,int *,int *,struct vattr*) ;
 int namei (struct nameidata*) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (int *,struct mount**,int) ;
 int vput (int *) ;
 int vrele (int *) ;

int
kern_mkfifoat(struct thread *td, int fd, const char *path,
    enum uio_seg pathseg, int mode)
{
 struct mount *mp;
 struct vattr vattr;
 struct nameidata nd;
 int error;

 AUDIT_ARG_MODE(mode);
restart:
 bwillwrite();
 NDINIT_ATRIGHTS(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
     NOCACHE, pathseg, path, fd, &cap_mkfifoat_rights,
     td);
 if ((error = namei(&nd)) != 0)
  return (error);
 if (nd.ni_vp != ((void*)0)) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  if (nd.ni_vp == nd.ni_dvp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  vrele(nd.ni_vp);
  return (EEXIST);
 }
 if (vn_start_write(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  vput(nd.ni_dvp);
  if ((error = vn_start_write(((void*)0), &mp, V_XSLEEP | PCATCH)) != 0)
   return (error);
  goto restart;
 }
 VATTR_NULL(&vattr);
 vattr.va_type = VFIFO;
 vattr.va_mode = (mode & ALLPERMS) & ~td->td_proc->p_fd->fd_cmask;






 error = VOP_MKNOD(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &vattr);
 if (error == 0)
  vput(nd.ni_vp);



 vput(nd.ni_dvp);
 vn_finished_write(mp);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 return (error);
}
