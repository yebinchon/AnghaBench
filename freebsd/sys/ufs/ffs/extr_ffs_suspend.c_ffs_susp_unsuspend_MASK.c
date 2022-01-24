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
struct ufsmount {int /*<<< orphan*/  um_flags; } ;
struct mount {int /*<<< orphan*/  mnt_susp_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_XLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct ufsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct ufsmount*) ; 
 int /*<<< orphan*/  UM_WRITESUSPENDED ; 
 struct ufsmount* FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  ffs_susp_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct mount *mp)
{
	struct ufsmount *ump;

	FUNC3(&ffs_susp_lock, SA_XLOCKED);

	/*
	 * XXX: The status is kept per-process; the vfs_write_resume() routine
	 * 	asserts that the resuming thread is the same one that called
	 * 	vfs_write_suspend().  The cdevpriv data, however, is attached
	 * 	to the file descriptor, e.g. is inherited during fork.  Thus,
	 * 	it's possible that the resuming process will be different from
	 * 	the one that started the suspension.
	 *
	 * 	Work around by fooling the check in vfs_write_resume().
	 */
	mp->mnt_susp_owner = curthread;

	FUNC5(mp, 0);
	ump = FUNC2(mp);
	FUNC0(ump);
	ump->um_flags &= ~UM_WRITESUSPENDED;
	FUNC1(ump);
	FUNC4(mp);
}