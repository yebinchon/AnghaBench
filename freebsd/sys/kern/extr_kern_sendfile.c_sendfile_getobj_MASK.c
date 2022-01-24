#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_object_t ;
struct vnode {scalar_t__ v_type; TYPE_3__* v_object; TYPE_2__* v_mount; } ;
struct vattr {int /*<<< orphan*/  va_size; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct shmfd {int /*<<< orphan*/  shm_size; TYPE_3__* shm_object; } ;
struct file {scalar_t__ f_type; struct shmfd* f_data; struct vnode* f_vnode; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_8__ {int f_iosize; } ;
struct TYPE_9__ {TYPE_1__ mnt_stat; } ;

/* Variables and functions */
 scalar_t__ DTYPE_SHM ; 
 scalar_t__ DTYPE_VNODE ; 
 int EBADF ; 
 int EINVAL ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int OBJ_DEAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct file *fp, vm_object_t *obj_res,
    struct vnode **vp_res, struct shmfd **shmfd_res, off_t *obj_size,
    int *bsize)
{
	struct vattr va;
	vm_object_t obj;
	struct vnode *vp;
	struct shmfd *shmfd;
	int error;

	vp = *vp_res = NULL;
	obj = NULL;
	shmfd = *shmfd_res = NULL;
	*bsize = 0;

	/*
	 * The file descriptor must be a regular file and have a
	 * backing VM object.
	 */
	if (fp->f_type == DTYPE_VNODE) {
		vp = fp->f_vnode;
		FUNC5(vp, LK_SHARED | LK_RETRY);
		if (vp->v_type != VREG) {
			error = EINVAL;
			goto out;
		}
		*bsize = vp->v_mount->mnt_stat.f_iosize;
		error = FUNC2(vp, &va, td->td_ucred);
		if (error != 0)
			goto out;
		*obj_size = va.va_size;
		obj = vp->v_object;
		if (obj == NULL) {
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

	FUNC0(obj);
	if ((obj->flags & OBJ_DEAD) != 0) {
		FUNC1(obj);
		error = EBADF;
		goto out;
	}

	/*
	 * Temporarily increase the backing VM object's reference
	 * count so that a forced reclamation of its vnode does not
	 * immediately destroy it.
	 */
	FUNC4(obj);
	FUNC1(obj);
	*obj_res = obj;
	*vp_res = vp;
	*shmfd_res = shmfd;

out:
	if (vp != NULL)
		FUNC3(vp, 0);
	return (error);
}