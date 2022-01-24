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
struct ufsmount {int /*<<< orphan*/  um_flags; int /*<<< orphan*/  um_devvp; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct ufsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufsmount*) ; 
 int /*<<< orphan*/  UM_WRITESUSPENDED ; 
 struct ufsmount* FUNC2 (struct mount*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VREAD ; 
 int /*<<< orphan*/  VS_SKIP_UNMOUNT ; 
 int VWRITE ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 int /*<<< orphan*/  ffs_susp_lock ; 
 scalar_t__ FUNC6 (struct mount*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct mount *mp)
{
	struct ufsmount *ump;
	int error;

	FUNC8(&ffs_susp_lock, SA_XLOCKED);

	if (!FUNC5(mp))
		return (EINVAL);
	if (FUNC6(mp))
		return (EBUSY);

	ump = FUNC2(mp);

	/*
	 * Make sure the calling thread is permitted to access the mounted
	 * device.  The permissions can change after we unlock the vnode;
	 * it's harmless.
	 */
	FUNC10(ump->um_devvp, LK_EXCLUSIVE | LK_RETRY);
	error = FUNC3(ump->um_devvp, VREAD | VWRITE,
	    curthread->td_ucred, curthread);
	FUNC4(ump->um_devvp, 0);
	if (error != 0)
		return (error);
#ifdef MAC
	if (mac_mount_check_stat(curthread->td_ucred, mp) != 0)
		return (EPERM);
#endif

	if ((error = FUNC9(mp, VS_SKIP_UNMOUNT)) != 0)
		return (error);

	FUNC0(ump);
	ump->um_flags |= UM_WRITESUSPENDED;
	FUNC1(ump);

	return (0);
}