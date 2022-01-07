
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mountedhere; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
struct fchdir_args {int fd; } ;


 int AUDIT_ARG_FD (int ) ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int VFS_ROOT (struct mount*,int,struct vnode**) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int cap_fchdir_rights ;
 int change_dir (struct vnode*,struct thread*) ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int ,int *,struct file**) ;
 int pwd_chdir (struct thread*,struct vnode*) ;
 scalar_t__ vfs_busy (struct mount*,int ) ;
 int vfs_unbusy (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;
 int vrefact (struct vnode*) ;

int
sys_fchdir(struct thread *td, struct fchdir_args *uap)
{
 struct vnode *vp, *tdp;
 struct mount *mp;
 struct file *fp;
 int error;

 AUDIT_ARG_FD(uap->fd);
 error = getvnode(td, uap->fd, &cap_fchdir_rights,
     &fp);
 if (error != 0)
  return (error);
 vp = fp->f_vnode;
 vrefact(vp);
 fdrop(fp, td);
 vn_lock(vp, LK_SHARED | LK_RETRY);
 AUDIT_ARG_VNODE1(vp);
 error = change_dir(vp, td);
 while (!error && (mp = vp->v_mountedhere) != ((void*)0)) {
  if (vfs_busy(mp, 0))
   continue;
  error = VFS_ROOT(mp, LK_SHARED, &tdp);
  vfs_unbusy(mp);
  if (error != 0)
   break;
  vput(vp);
  vp = tdp;
 }
 if (error != 0) {
  vput(vp);
  return (error);
 }
 VOP_UNLOCK(vp, 0);
 pwd_chdir(td, vp);
 return (0);
}
