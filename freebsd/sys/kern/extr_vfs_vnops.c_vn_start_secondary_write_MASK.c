#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct mount {int mnt_kern_flag; TYPE_1__* mnt_vfc; int /*<<< orphan*/  mnt_flag; int /*<<< orphan*/  mnt_secondary_accwrites; int /*<<< orphan*/  mnt_secondary_writes; } ;
struct TYPE_2__ {int vfc_flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MNTK_SUSPEND2 ; 
 int MNTK_SUSPENDED ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int PCATCH ; 
 int PDROP ; 
 int PUSER ; 
 int VFCF_SBDRY ; 
 int FUNC6 (struct vnode*,struct mount**) ; 
 int V_MNTREF ; 
 int V_NOWAIT ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 

int
FUNC10(struct vnode *vp, struct mount **mpp, int flags)
{
	struct mount *mp;
	int error;

	FUNC0((flags & V_MNTREF) == 0 || (*mpp != NULL && vp == NULL),
	    ("V_MNTREF requires mp"));

 retry:
	if (vp != NULL) {
		if ((error = FUNC6(vp, mpp)) != 0) {
			*mpp = NULL;
			if (error != EOPNOTSUPP)
				return (error);
			return (0);
		}
	}
	/*
	 * If we are not suspended or have not yet reached suspended
	 * mode, then let the operation proceed.
	 */
	if ((mp = *mpp) == NULL)
		return (0);

	if (!FUNC9(mp)) {
		if (vp != NULL || (flags & V_MNTREF) != 0)
			FUNC8(mp);
		return (0);
	}

	/*
	 * VOP_GETWRITEMOUNT() returns with the mp refcount held through
	 * a vfs_ref().
	 * As long as a vnode is not provided we need to acquire a
	 * refcount for the provided mountpoint too, in order to
	 * emulate a vfs_ref().
	 */
	FUNC1(mp);
	if (vp == NULL && (flags & V_MNTREF) == 0)
		FUNC4(mp);
	if ((mp->mnt_kern_flag & (MNTK_SUSPENDED | MNTK_SUSPEND2)) == 0) {
		mp->mnt_secondary_writes++;
		mp->mnt_secondary_accwrites++;
		FUNC2(mp);
		return (0);
	}
	if (flags & V_NOWAIT) {
		FUNC5(mp);
		FUNC2(mp);
		return (EWOULDBLOCK);
	}
	/*
	 * Wait for the suspension to finish.
	 */
	error = FUNC7(&mp->mnt_flag, FUNC3(mp), (PUSER - 1) | PDROP |
	    ((mp->mnt_vfc->vfc_flags & VFCF_SBDRY) != 0 ? (flags & PCATCH) : 0),
	    "suspfs", 0);
	FUNC8(mp);
	if (error == 0)
		goto retry;
	return (error);
}