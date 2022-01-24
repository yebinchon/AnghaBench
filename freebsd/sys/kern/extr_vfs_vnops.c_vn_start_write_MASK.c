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
struct vnode {int dummy; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vnode*,struct mount**) ; 
 int V_MNTREF ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int FUNC4 (struct mount*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 

int
FUNC6(struct vnode *vp, struct mount **mpp, int flags)
{
	struct mount *mp;
	int error;

	FUNC0((flags & V_MNTREF) == 0 || (*mpp != NULL && vp == NULL),
	    ("V_MNTREF requires mp"));

	error = 0;
	/*
	 * If a vnode is provided, get and return the mount point that
	 * to which it will write.
	 */
	if (vp != NULL) {
		if ((error = FUNC1(vp, mpp)) != 0) {
			*mpp = NULL;
			if (error != EOPNOTSUPP)
				return (error);
			return (0);
		}
	}
	if ((mp = *mpp) == NULL)
		return (0);

	if (!FUNC5(mp)) {
		if (vp != NULL || (flags & V_MNTREF) != 0)
			FUNC3(mp);
		return (0);
	}

	/*
	 * VOP_GETWRITEMOUNT() returns with the mp refcount held through
	 * a vfs_ref().
	 * As long as a vnode is not provided we need to acquire a
	 * refcount for the provided mountpoint too, in order to
	 * emulate a vfs_ref().
	 */
	if (vp == NULL && (flags & V_MNTREF) == 0)
		FUNC2(mp);

	return (FUNC4(mp, flags, false));
}