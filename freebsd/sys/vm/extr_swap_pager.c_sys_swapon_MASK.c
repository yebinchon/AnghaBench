#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {scalar_t__ v_type; TYPE_2__* v_mount; } ;
struct vattr {int va_size; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct swapon_args {int /*<<< orphan*/  name; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_4__ {TYPE_1__* mnt_vfc; } ;
struct TYPE_3__ {int vfc_flags; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int DEV_BSIZE ; 
 int ENOMEM ; 
 int FOLLOW ; 
 int ISOPEN ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  PRIV_SWAPON ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int VFCF_NETWORK ; 
 int FUNC2 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int FUNC3 (struct nameidata*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*) ; 
 int FUNC6 (struct thread*,struct vnode*,int) ; 
 int /*<<< orphan*/ * swblk_zone ; 
 int /*<<< orphan*/  swdev_syscall_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct vnode*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnode*) ; 

int
FUNC11(struct thread *td, struct swapon_args *uap)
{
	struct vattr attr;
	struct vnode *vp;
	struct nameidata nd;
	int error;

	error = FUNC4(td, PRIV_SWAPON);
	if (error)
		return (error);

	FUNC7(&swdev_syscall_lock);

	/*
	 * Swap metadata may not fit in the KVM if we have physical
	 * memory of >1GB.
	 */
	if (swblk_zone == NULL) {
		error = ENOMEM;
		goto done;
	}

	FUNC1(&nd, LOOKUP, ISOPEN | FOLLOW | AUDITVNODE1, UIO_USERSPACE,
	    uap->name, td);
	error = FUNC3(&nd);
	if (error)
		goto done;

	FUNC0(&nd, NDF_ONLY_PNBUF);
	vp = nd.ni_vp;

	if (FUNC9(vp, &error)) {
		error = FUNC5(vp);
	} else if (vp->v_type == VREG &&
	    (vp->v_mount->mnt_vfc->vfc_flags & VFCF_NETWORK) != 0 &&
	    (error = FUNC2(vp, &attr, td->td_ucred)) == 0) {
		/*
		 * Allow direct swapping to NFS regular files in the same
		 * way that nfs_mountroot() sets up diskless swapping.
		 */
		error = FUNC6(td, vp, attr.va_size / DEV_BSIZE);
	}

	if (error)
		FUNC10(vp);
done:
	FUNC8(&swdev_syscall_lock);
	return (error);
}