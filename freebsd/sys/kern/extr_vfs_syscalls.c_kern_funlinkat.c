
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; int v_iflag; int v_vflag; } ;
struct thread {int td_ucred; } ;
struct stat {scalar_t__ st_ino; } ;
struct nameidata {struct vnode* ni_dvp; int ni_cnd; struct vnode* ni_vp; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef scalar_t__ ino_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;


 int AT_BENEATH ;
 int AUDITVNODE1 ;
 int BENEATH ;
 int DELETE ;
 int EBADF ;
 int EBUSY ;
 int EDEADLK ;
 int EIDRM ;
 int EINVAL ;
 int EPERM ;
 int FD_NONE ;
 int LOCKLEAF ;
 int LOCKPARENT ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT_ATRIGHTS (struct nameidata*,int ,int,int,char const*,int,int *,struct thread*) ;
 int NOCRED ;
 int PCATCH ;
 scalar_t__ VDIR ;
 int VFS_NOTIFY_UPPER_UNLINK ;
 int VI_DOOMED ;
 int VOP_REMOVE (struct vnode*,struct vnode*,int *) ;
 int VV_ROOT ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int bwillwrite () ;
 int cap_no_rights ;
 int cap_unlinkat_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int,int *,struct file**) ;
 int mac_vnode_check_unlink (int ,struct vnode*,struct vnode*,int *) ;
 int namei (struct nameidata*) ;
 int vfs_notify_upper (struct vnode*,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vn_stat (struct vnode*,struct stat*,int ,int ,struct thread*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
kern_funlinkat(struct thread *td, int dfd, const char *path, int fd,
    enum uio_seg pathseg, int flag, ino_t oldinum)
{
 struct mount *mp;
 struct file *fp;
 struct vnode *vp;
 struct nameidata nd;
 struct stat sb;
 int error;

 fp = ((void*)0);
 if (fd != FD_NONE) {
  error = getvnode(td, fd, &cap_no_rights, &fp);
  if (error != 0)
   return (error);
 }

restart:
 bwillwrite();
 NDINIT_ATRIGHTS(&nd, DELETE, LOCKPARENT | LOCKLEAF | AUDITVNODE1 |
     ((flag & AT_BENEATH) != 0 ? BENEATH : 0),
     pathseg, path, dfd, &cap_unlinkat_rights, td);
 if ((error = namei(&nd)) != 0) {
  if (error == EINVAL)
   error = EPERM;
  goto fdout;
 }
 vp = nd.ni_vp;
 if (vp->v_type == VDIR && oldinum == 0) {
  error = EPERM;
 } else if (oldinum != 0 &&
    ((error = vn_stat(vp, &sb, td->td_ucred, NOCRED, td)) == 0) &&
    sb.st_ino != oldinum) {
  error = EIDRM;
 } else if (fp != ((void*)0) && fp->f_vnode != vp) {
  if ((fp->f_vnode->v_iflag & VI_DOOMED) != 0)
   error = EBADF;
  else
   error = EDEADLK;
 } else {





  if (vp->v_vflag & VV_ROOT)
   error = EBUSY;
 }
 if (error == 0) {
  if (vn_start_write(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
   NDFREE(&nd, NDF_ONLY_PNBUF);
   vput(nd.ni_dvp);
   if (vp == nd.ni_dvp)
    vrele(vp);
   else
    vput(vp);
   if ((error = vn_start_write(((void*)0), &mp,
       V_XSLEEP | PCATCH)) != 0) {
    goto fdout;
   }
   goto restart;
  }






  vfs_notify_upper(vp, VFS_NOTIFY_UPPER_UNLINK);
  error = VOP_REMOVE(nd.ni_dvp, vp, &nd.ni_cnd);



  vn_finished_write(mp);
 }
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vput(nd.ni_dvp);
 if (vp == nd.ni_dvp)
  vrele(vp);
 else
  vput(vp);
fdout:
 if (fp != ((void*)0))
  fdrop(fp, td);
 return (error);
}
