
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct statfs {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int LK_RETRY ;
 int LK_SHARED ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int cap_fstatfs_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int,int *,struct file**) ;
 int kern_do_statfs (struct thread*,struct mount*,struct statfs*) ;
 int vfs_ref (struct mount*) ;
 int vn_lock (struct vnode*,int) ;

int
kern_fstatfs(struct thread *td, int fd, struct statfs *buf)
{
 struct file *fp;
 struct mount *mp;
 struct vnode *vp;
 int error;

 AUDIT_ARG_FD(fd);
 error = getvnode(td, fd, &cap_fstatfs_rights, &fp);
 if (error != 0)
  return (error);
 vp = fp->f_vnode;
 vn_lock(vp, LK_SHARED | LK_RETRY);



 mp = vp->v_mount;
 if (mp != ((void*)0))
  vfs_ref(mp);
 VOP_UNLOCK(vp, 0);
 fdrop(fp, td);
 return (kern_do_statfs(td, mp, buf));
}
