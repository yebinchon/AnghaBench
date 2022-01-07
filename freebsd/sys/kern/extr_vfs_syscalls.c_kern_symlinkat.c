
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vattr {int va_mode; int va_type; } ;
struct thread {int td_ucred; TYPE_2__* td_proc; } ;
struct nameidata {scalar_t__ ni_vp; scalar_t__ ni_dvp; int ni_cnd; } ;
struct mount {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_4__ {TYPE_1__* p_fd; } ;
struct TYPE_3__ {int fd_cmask; } ;


 int ACCESSPERMS ;
 int AUDITVNODE1 ;
 int AUDIT_ARG_TEXT (char const*) ;
 int CREATE ;
 int EEXIST ;
 int LOCKPARENT ;
 int MAXPATHLEN ;
 int M_WAITOK ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOCACHE ;
 int PCATCH ;
 int SAVENAME ;
 int UIO_SYSSPACE ;
 int VATTR_NULL (struct vattr*) ;
 int VLNK ;
 int VOP_SYMLINK (scalar_t__,scalar_t__*,int *,struct vattr*,char const*) ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int bwillwrite () ;
 int cap_symlinkat_rights ;
 int copyinstr (char const*,char*,int ,int *) ;
 int mac_vnode_check_create (int ,scalar_t__,int *,struct vattr*) ;
 int namei (struct nameidata*) ;
 int namei_zone ;
 char* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,char*) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (int *,struct mount**,int) ;
 int vput (scalar_t__) ;
 int vrele (scalar_t__) ;

int
kern_symlinkat(struct thread *td, const char *path1, int fd, const char *path2,
    enum uio_seg segflg)
{
 struct mount *mp;
 struct vattr vattr;
 const char *syspath;
 char *tmppath;
 struct nameidata nd;
 int error;

 if (segflg == UIO_SYSSPACE) {
  syspath = path1;
 } else {
  tmppath = uma_zalloc(namei_zone, M_WAITOK);
  if ((error = copyinstr(path1, tmppath, MAXPATHLEN, ((void*)0))) != 0)
   goto out;
  syspath = tmppath;
 }
 AUDIT_ARG_TEXT(syspath);
restart:
 bwillwrite();
 NDINIT_ATRIGHTS(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
     NOCACHE, segflg, path2, fd, &cap_symlinkat_rights,
     td);
 if ((error = namei(&nd)) != 0)
  goto out;
 if (nd.ni_vp) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  if (nd.ni_vp == nd.ni_dvp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  vrele(nd.ni_vp);
  error = EEXIST;
  goto out;
 }
 if (vn_start_write(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  vput(nd.ni_dvp);
  if ((error = vn_start_write(((void*)0), &mp, V_XSLEEP | PCATCH)) != 0)
   goto out;
  goto restart;
 }
 VATTR_NULL(&vattr);
 vattr.va_mode = ACCESSPERMS &~ td->td_proc->p_fd->fd_cmask;







 error = VOP_SYMLINK(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &vattr, syspath);
 if (error == 0)
  vput(nd.ni_vp);



 NDFREE(&nd, NDF_ONLY_PNBUF);
 vput(nd.ni_dvp);
 vn_finished_write(mp);
out:
 if (segflg != UIO_SYSSPACE)
  uma_zfree(namei_zone, tmppath);
 return (error);
}
