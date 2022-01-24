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
struct mount {scalar_t__ mnt_susp_owner; int mnt_kern_flag; scalar_t__ mnt_flag; scalar_t__ mnt_writeopcount; } ;

/* Variables and functions */
 int EALREADY ; 
 int EBUSY ; 
 int MNTK_SUSPEND ; 
 int MNTK_UNMOUNT ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  MNT_SUSPEND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PDROP ; 
 int PUSER ; 
 int FUNC4 (struct mount*,int /*<<< orphan*/ ) ; 
 int VS_SKIP_UNMOUNT ; 
 scalar_t__ curthread ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct mount*) ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 

int
FUNC12(struct mount *mp, int flags)
{
	int error;

	FUNC3(FUNC11(mp));

	FUNC7(mp);

	FUNC0(mp);
	FUNC6(mp);
	if (mp->mnt_susp_owner == curthread) {
		FUNC9(mp);
		FUNC1(mp);
		return (EALREADY);
	}
	while (mp->mnt_kern_flag & MNTK_SUSPEND)
		FUNC5(&mp->mnt_flag, FUNC2(mp), PUSER - 1, "wsuspfs", 0);

	/*
	 * Unmount holds a write reference on the mount point.  If we
	 * own busy reference and drain for writers, we deadlock with
	 * the reference draining in the unmount path.  Callers of
	 * vfs_write_suspend() must specify VS_SKIP_UNMOUNT if
	 * vfs_busy() reference is owned and caller is not in the
	 * unmount context.
	 */
	if ((flags & VS_SKIP_UNMOUNT) != 0 &&
	    (mp->mnt_kern_flag & MNTK_UNMOUNT) != 0) {
		FUNC9(mp);
		FUNC1(mp);
		return (EBUSY);
	}

	mp->mnt_kern_flag |= MNTK_SUSPEND;
	mp->mnt_susp_owner = curthread;
	if (mp->mnt_writeopcount > 0)
		(void) FUNC5(&mp->mnt_writeopcount, 
		    FUNC2(mp), (PUSER - 1)|PDROP, "suspwt", 0);
	else
		FUNC1(mp);
	if ((error = FUNC4(mp, MNT_SUSPEND)) != 0) {
		FUNC10(mp, 0);
		FUNC8(mp);
	}
	return (error);
}