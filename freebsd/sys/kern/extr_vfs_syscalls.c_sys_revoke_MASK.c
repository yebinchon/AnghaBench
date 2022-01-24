#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {scalar_t__ v_type; int /*<<< orphan*/ * v_rdev; } ;
struct vattr {scalar_t__ va_uid; } ;
struct thread {TYPE_1__* td_ucred; } ;
struct revoke_args {int /*<<< orphan*/  path; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct TYPE_3__ {scalar_t__ cr_uid; } ;

/* Variables and functions */
 int AUDITVNODE1 ; 
 int EINVAL ; 
 int FOLLOW ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  PRIV_VFS_ADMIN ; 
 int /*<<< orphan*/  REVOKEALL ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 scalar_t__ VCHR ; 
 int FUNC2 (struct vnode*,struct vattr*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,struct vnode*) ; 
 int FUNC5 (struct nameidata*) ; 
 int FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*) ; 

int
FUNC9(struct thread *td, struct revoke_args *uap)
{
	struct vnode *vp;
	struct vattr vattr;
	struct nameidata nd;
	int error;

	FUNC1(&nd, LOOKUP, FOLLOW | LOCKLEAF | AUDITVNODE1, UIO_USERSPACE,
	    uap->path, td);
	if ((error = FUNC5(&nd)) != 0)
		return (error);
	vp = nd.ni_vp;
	FUNC0(&nd, NDF_ONLY_PNBUF);
	if (vp->v_type != VCHR || vp->v_rdev == NULL) {
		error = EINVAL;
		goto out;
	}
#ifdef MAC
	error = mac_vnode_check_revoke(td->td_ucred, vp);
	if (error != 0)
		goto out;
#endif
	error = FUNC2(vp, &vattr, td->td_ucred);
	if (error != 0)
		goto out;
	if (td->td_ucred->cr_uid != vattr.va_uid) {
		error = FUNC6(td, PRIV_VFS_ADMIN);
		if (error != 0)
			goto out;
	}
	if (FUNC7(vp) > 1)
		FUNC3(vp, REVOKEALL);
out:
	FUNC8(vp);
	return (error);
}