
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vattr {int va_mode; int va_type; } ;
struct thread {int td_ucred; TYPE_2__* td_proc; } ;
struct TYPE_7__ {int cn_flags; } ;
struct nameidata {struct vnode* ni_vp; struct vnode* ni_dvp; TYPE_3__ ni_cnd; } ;
struct mount {int dummy; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_6__ {TYPE_1__* p_fd; } ;
struct TYPE_5__ {int fd_cmask; } ;


 int ACCESSPERMS ;
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
 int VDIR ;
 int VOP_MKDIR (struct vnode*,struct vnode**,TYPE_3__*,struct vattr*) ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int WILLBEDIR ;
 int bwillwrite () ;
 int cap_mkdirat_rights ;
 int mac_vnode_check_create (int ,struct vnode*,TYPE_3__*,struct vattr*) ;
 int namei (struct nameidata*) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
kern_mkdirat(struct thread *td, int fd, const char *path, enum uio_seg segflg,
    int mode)
{
 struct mount *mp;
 struct vnode *vp;
 struct vattr vattr;
 struct nameidata nd;
 int error;

 AUDIT_ARG_MODE(mode);
restart:
 bwillwrite();
 NDINIT_ATRIGHTS(&nd, CREATE, LOCKPARENT | SAVENAME | AUDITVNODE1 |
     NOCACHE, segflg, path, fd, &cap_mkdirat_rights,
     td);
 nd.ni_cnd.cn_flags |= WILLBEDIR;
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
 }
 if (vn_start_write(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  vput(nd.ni_dvp);
  if ((error = vn_start_write(((void*)0), &mp, V_XSLEEP | PCATCH)) != 0)
   return (error);
  goto restart;
 }
 VATTR_NULL(&vattr);
 vattr.va_type = VDIR;
 vattr.va_mode = (mode & ACCESSPERMS) &~ td->td_proc->p_fd->fd_cmask;






 error = VOP_MKDIR(nd.ni_dvp, &nd.ni_vp, &nd.ni_cnd, &vattr);



 NDFREE(&nd, NDF_ONLY_PNBUF);
 vput(nd.ni_dvp);
 if (error == 0)
  vput(nd.ni_vp);
 vn_finished_write(mp);
 return (error);
}
