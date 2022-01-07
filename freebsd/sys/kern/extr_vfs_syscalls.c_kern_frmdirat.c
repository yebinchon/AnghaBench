
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; int v_vflag; int v_iflag; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_dvp; int ni_cnd; struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef int cap_rights_t ;


 int AT_BENEATH ;
 int AUDITVNODE1 ;
 int BENEATH ;
 int CAP_LOOKUP ;
 int DELETE ;
 int EBADF ;
 int EBUSY ;
 int EDEADLK ;
 int EINVAL ;
 int ENOTDIR ;
 int FD_NONE ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int PCATCH ;
 scalar_t__ VDIR ;
 int VFS_NOTIFY_UPPER_UNLINK ;
 int VI_DOOMED ;
 int VOP_RMDIR (struct vnode*,struct vnode*,int *) ;
 int VV_ROOT ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int bwillwrite () ;
 int cap_rights_init (int *,int ) ;
 int cap_unlinkat_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int,int ,struct file**) ;
 int mac_vnode_check_unlink (int ,struct vnode*,struct vnode*,int *) ;
 int namei (struct nameidata*) ;
 int vfs_notify_upper (struct vnode*,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
kern_frmdirat(struct thread *td, int dfd, const char *path, int fd,
    enum uio_seg pathseg, int flag)
{
 struct mount *mp;
 struct vnode *vp;
 struct file *fp;
 struct nameidata nd;
 cap_rights_t rights;
 int error;

 fp = ((void*)0);
 if (fd != FD_NONE) {
  error = getvnode(td, fd, cap_rights_init(&rights, CAP_LOOKUP),
      &fp);
  if (error != 0)
   return (error);
 }

restart:
 bwillwrite();
 NDINIT_ATRIGHTS(&nd, DELETE, LOCKPARENT | LOCKLEAF | AUDITVNODE1 |
     ((flag & AT_BENEATH) != 0 ? BENEATH : 0),
     pathseg, path, dfd, &cap_unlinkat_rights, td);
 if ((error = namei(&nd)) != 0)
  goto fdout;
 vp = nd.ni_vp;
 if (vp->v_type != VDIR) {
  error = ENOTDIR;
  goto out;
 }



 if (nd.ni_dvp == vp) {
  error = EINVAL;
  goto out;
 }



 if (vp->v_vflag & VV_ROOT) {
  error = EBUSY;
  goto out;
 }

 if (fp != ((void*)0) && fp->f_vnode != vp) {
  if ((fp->f_vnode->v_iflag & VI_DOOMED) != 0)
   error = EBADF;
  else
   error = EDEADLK;
  goto out;
 }







 if (vn_start_write(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  vput(vp);
  if (nd.ni_dvp == vp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  if ((error = vn_start_write(((void*)0), &mp, V_XSLEEP | PCATCH)) != 0)
   goto fdout;
  goto restart;
 }
 vfs_notify_upper(vp, VFS_NOTIFY_UPPER_UNLINK);
 error = VOP_RMDIR(nd.ni_dvp, nd.ni_vp, &nd.ni_cnd);
 vn_finished_write(mp);
out:
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vput(vp);
 if (nd.ni_dvp == vp)
  vrele(nd.ni_dvp);
 else
  vput(nd.ni_dvp);
fdout:
 if (fp != ((void*)0))
  fdrop(fp, td);
 return (error);
}
