#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vop_fsync_args {scalar_t__ a_waitfor; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_td; } ;
struct vnode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* de_pmp; } ;
struct TYPE_4__ {struct vnode* pm_devvp; } ;

/* Variables and functions */
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 scalar_t__ MNT_WAIT ; 
 int FUNC0 (struct vnode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vop_fsync_args*) ; 

__attribute__((used)) static int
FUNC6(struct vop_fsync_args *ap)
{
	struct vnode *devvp;
	int allerror, error;

	FUNC5(ap);

	/*
	* If the syncing request comes from fsync(2), sync the entire
	* FAT and any other metadata that happens to be on devvp.  We
	* need this mainly for the FAT.  We write the FAT sloppily, and
	* syncing it all now is the best we can easily do to get all
	* directory entries associated with the file (not just the file)
	* fully synced.  The other metadata includes critical metadata
	* for all directory entries, but only in the MNT_ASYNC case.  We
	* will soon sync all metadata in the file's directory entry.
	* Non-critical metadata for associated directory entries only
	* gets synced accidentally, as in most file systems.
	*/
	if (ap->a_waitfor == MNT_WAIT) {
		devvp = FUNC2(ap->a_vp)->de_pmp->pm_devvp;
		FUNC4(devvp, LK_EXCLUSIVE | LK_RETRY);
		allerror = FUNC0(devvp, MNT_WAIT, ap->a_td);
		FUNC1(devvp, 0);
	} else
		allerror = 0;

	error = FUNC3(FUNC2(ap->a_vp), ap->a_waitfor == MNT_WAIT);
	if (allerror == 0)
		allerror = error;
	return (allerror);
}