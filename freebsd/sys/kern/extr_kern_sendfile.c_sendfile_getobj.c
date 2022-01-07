
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* vm_object_t ;
struct vnode {scalar_t__ v_type; TYPE_3__* v_object; TYPE_2__* v_mount; } ;
struct vattr {int va_size; } ;
struct thread {int td_ucred; } ;
struct shmfd {int shm_size; TYPE_3__* shm_object; } ;
struct file {scalar_t__ f_type; struct shmfd* f_data; struct vnode* f_vnode; } ;
typedef int off_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_8__ {int f_iosize; } ;
struct TYPE_9__ {TYPE_1__ mnt_stat; } ;


 scalar_t__ DTYPE_SHM ;
 scalar_t__ DTYPE_VNODE ;
 int EBADF ;
 int EINVAL ;
 int LK_RETRY ;
 int LK_SHARED ;
 int OBJ_DEAD ;
 int VM_OBJECT_WLOCK (TYPE_3__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_3__*) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 scalar_t__ VREG ;
 int vm_object_reference_locked (TYPE_3__*) ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
sendfile_getobj(struct thread *td, struct file *fp, vm_object_t *obj_res,
    struct vnode **vp_res, struct shmfd **shmfd_res, off_t *obj_size,
    int *bsize)
{
 struct vattr va;
 vm_object_t obj;
 struct vnode *vp;
 struct shmfd *shmfd;
 int error;

 vp = *vp_res = ((void*)0);
 obj = ((void*)0);
 shmfd = *shmfd_res = ((void*)0);
 *bsize = 0;





 if (fp->f_type == DTYPE_VNODE) {
  vp = fp->f_vnode;
  vn_lock(vp, LK_SHARED | LK_RETRY);
  if (vp->v_type != VREG) {
   error = EINVAL;
   goto out;
  }
  *bsize = vp->v_mount->mnt_stat.f_iosize;
  error = VOP_GETATTR(vp, &va, td->td_ucred);
  if (error != 0)
   goto out;
  *obj_size = va.va_size;
  obj = vp->v_object;
  if (obj == ((void*)0)) {
   error = EINVAL;
   goto out;
  }
 } else if (fp->f_type == DTYPE_SHM) {
  error = 0;
  shmfd = fp->f_data;
  obj = shmfd->shm_object;
  *obj_size = shmfd->shm_size;
 } else {
  error = EINVAL;
  goto out;
 }

 VM_OBJECT_WLOCK(obj);
 if ((obj->flags & OBJ_DEAD) != 0) {
  VM_OBJECT_WUNLOCK(obj);
  error = EBADF;
  goto out;
 }






 vm_object_reference_locked(obj);
 VM_OBJECT_WUNLOCK(obj);
 *obj_res = obj;
 *vp_res = vp;
 *shmfd_res = shmfd;

out:
 if (vp != ((void*)0))
  VOP_UNLOCK(vp, 0);
 return (error);
}
