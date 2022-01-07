
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_object; struct mount* v_mount; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct file {struct vnode* f_vnode; } ;


 int AUDIT_ARG_FD (int) ;
 int AUDIT_ARG_VNODE1 (struct vnode*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_SHARED ;
 scalar_t__ MNT_SHARED_WRITES (struct mount*) ;
 int MNT_WAIT ;
 int PCATCH ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int VOP_FDATASYNC (struct vnode*,struct thread*) ;
 int VOP_FSYNC (struct vnode*,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int cap_fsync_rights ;
 int fdrop (struct file*,struct thread*) ;
 int getvnode (struct thread*,int,int *,struct file**) ;
 int vm_object_page_clean (int *,int ,int ,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

int
kern_fsync(struct thread *td, int fd, bool fullsync)
{
 struct vnode *vp;
 struct mount *mp;
 struct file *fp;
 int error, lock_flags;

 AUDIT_ARG_FD(fd);
 error = getvnode(td, fd, &cap_fsync_rights, &fp);
 if (error != 0)
  return (error);
 vp = fp->f_vnode;




 error = vn_start_write(vp, &mp, V_WAIT | PCATCH);
 if (error != 0)
  goto drop;
 if (MNT_SHARED_WRITES(mp) ||
     ((mp == ((void*)0)) && MNT_SHARED_WRITES(vp->v_mount))) {
  lock_flags = LK_SHARED;
 } else {
  lock_flags = LK_EXCLUSIVE;
 }
 vn_lock(vp, lock_flags | LK_RETRY);
 AUDIT_ARG_VNODE1(vp);
 if (vp->v_object != ((void*)0)) {
  VM_OBJECT_WLOCK(vp->v_object);
  vm_object_page_clean(vp->v_object, 0, 0, 0);
  VM_OBJECT_WUNLOCK(vp->v_object);
 }
 error = fullsync ? VOP_FSYNC(vp, MNT_WAIT, td) : VOP_FDATASYNC(vp, td);
 VOP_UNLOCK(vp, 0);
 vn_finished_write(mp);
drop:
 fdrop(fp, td);
 return (error);
}
