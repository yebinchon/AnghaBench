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
struct vnode {int v_iflag; struct mount* v_mount; } ;
struct mount {int dummy; } ;
struct TYPE_3__ {struct vnode* p_textvp; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  MBF_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mount*,int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* curproc ; 
 TYPE_1__* initproc ; 
 int /*<<< orphan*/  mnt_list ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct vnode*) ; 
 int /*<<< orphan*/  mountlist ; 
 int /*<<< orphan*/  mountlist_mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mount* rootdevmp ; 
 struct vnode* rootvnode ; 
 int FUNC7 (struct mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct mount*) ; 
 int /*<<< orphan*/  FUNC10 (struct mount*) ; 
 int /*<<< orphan*/  FUNC11 (struct mount*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC14(void)
{
	struct vnode *oldrootvnode, *vp;
	struct mount *mp, *devmp;
	int error;

	if (curproc != initproc)
		return (EPERM);

	/*
	 * Mark the filesystem containing currently-running executable
	 * (the temporary copy of init(8)) busy.
	 */
	vp = curproc->p_textvp;
	error = FUNC13(vp, LK_SHARED);
	if (error != 0)
		return (error);
	mp = vp->v_mount;
	error = FUNC7(mp, MBF_NOWAIT);
	if (error != 0) {
		FUNC9(mp);
		FUNC3(vp, 0);
		error = FUNC7(mp, 0);
		FUNC13(vp, LK_SHARED | LK_RETRY);
		FUNC10(mp);
		if (error != 0) {
			FUNC3(vp, 0);
			return (ENOENT);
		}
		if (vp->v_iflag & VI_DOOMED) {
			FUNC3(vp, 0);
			FUNC11(mp);
			return (ENOENT);
		}
	}
	FUNC3(vp, 0);

	/*
	 * Remove the filesystem containing currently-running executable
	 * from the mount list, to prevent it from being unmounted
	 * by vfs_unmountall(), and to avoid confusing vfs_mountroot().
	 *
	 * Also preserve /dev - forcibly unmounting it could cause driver
	 * reinitialization.
	 */

	FUNC9(rootdevmp);
	devmp = rootdevmp;
	rootdevmp = NULL;

	FUNC5(&mountlist_mtx);
	FUNC2(&mountlist, mp, mnt_list);
	FUNC2(&mountlist, devmp, mnt_list);
	FUNC6(&mountlist_mtx);

	oldrootvnode = rootvnode;

	/*
	 * Unmount everything except for the two filesystems preserved above.
	 */
	FUNC12();

	/*
	 * Add /dev back; vfs_mountroot() will move it into its new place.
	 */
	FUNC5(&mountlist_mtx);
	FUNC0(&mountlist, devmp, mnt_list);
	FUNC6(&mountlist_mtx);
	rootdevmp = devmp;
	FUNC10(rootdevmp);

	/*
	 * Mount the new rootfs.
	 */
	FUNC8();

	/*
	 * Update all references to the old rootvnode.
	 */
	FUNC4(oldrootvnode, rootvnode);

	/*
	 * Add the temporary filesystem back and unbusy it.
	 */
	FUNC5(&mountlist_mtx);
	FUNC1(&mountlist, mp, mnt_list);
	FUNC6(&mountlist_mtx);
	FUNC11(mp);

	return (0);
}