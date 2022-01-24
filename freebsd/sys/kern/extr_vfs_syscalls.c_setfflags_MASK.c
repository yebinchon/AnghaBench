#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_long ;
struct vnode {scalar_t__ v_type; } ;
struct vattr {scalar_t__ va_flags; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int PCATCH ; 
 int /*<<< orphan*/  PRIV_VFS_CHFLAGS_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct vattr*) ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 scalar_t__ VNOVAL ; 
 int FUNC1 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vnode*,scalar_t__) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int) ; 
 int FUNC7 (struct vnode*,struct mount**,int) ; 

__attribute__((used)) static int
FUNC8(struct thread *td, struct vnode *vp, u_long flags)
{
	struct mount *mp;
	struct vattr vattr;
	int error;

	/* We can't support the value matching VNOVAL. */
	if (flags == VNOVAL)
		return (EOPNOTSUPP);

	/*
	 * Prevent non-root users from setting flags on devices.  When
	 * a device is reused, users can retain ownership of the device
	 * if they are allowed to set flags and programs assume that
	 * chown can't fail when done as root.
	 */
	if (vp->v_type == VCHR || vp->v_type == VBLK) {
		error = FUNC4(td, PRIV_VFS_CHFLAGS_DEV);
		if (error != 0)
			return (error);
	}

	if ((error = FUNC7(vp, &mp, V_WAIT | PCATCH)) != 0)
		return (error);
	FUNC0(&vattr);
	vattr.va_flags = flags;
	FUNC6(vp, LK_EXCLUSIVE | LK_RETRY);
#ifdef MAC
	error = mac_vnode_check_setflags(td->td_ucred, vp, vattr.va_flags);
	if (error == 0)
#endif
		error = FUNC1(vp, &vattr, td->td_ucred);
	FUNC2(vp, 0);
	FUNC5(mp);
	return (error);
}