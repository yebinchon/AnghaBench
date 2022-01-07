
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int * v_object; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;


 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int MNT_WAIT ;
 int PCATCH ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int VOP_FSYNC (struct vnode*,int ,struct thread*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int V_WAIT ;
 int vm_object_page_clean (int *,int ,int ,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;

__attribute__((used)) static int
aio_fsync_vnode(struct thread *td, struct vnode *vp)
{
 struct mount *mp;
 int error;

 if ((error = vn_start_write(vp, &mp, V_WAIT | PCATCH)) != 0)
  goto drop;
 vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 if (vp->v_object != ((void*)0)) {
  VM_OBJECT_WLOCK(vp->v_object);
  vm_object_page_clean(vp->v_object, 0, 0, 0);
  VM_OBJECT_WUNLOCK(vp->v_object);
 }
 error = VOP_FSYNC(vp, MNT_WAIT, td);

 VOP_UNLOCK(vp, 0);
 vn_finished_write(mp);
drop:
 return (error);
}
