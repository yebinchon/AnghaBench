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
struct vop_ioctl_args {int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_data; int /*<<< orphan*/  a_command; struct vnode* a_vp; } ;
struct vnode {int v_iflag; int /*<<< orphan*/  v_mount; } ;
struct devfs_mount {int /*<<< orphan*/  dm_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_mount*) ; 
 int EBADF ; 
 int ENOENT ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 struct devfs_mount* FUNC2 (int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct devfs_mount*) ; 
 int FUNC5 (struct devfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC10(struct vop_ioctl_args *ap)
{
	struct vnode *vp;
	struct devfs_mount *dmp;
	int error;

	vp = ap->a_vp;
	FUNC9(vp, LK_SHARED | LK_RETRY);
	if (vp->v_iflag & VI_DOOMED) {
		FUNC3(vp, 0);
		return (EBADF);
	}
	dmp = FUNC2(vp->v_mount);
	FUNC7(&dmp->dm_lock);
	FUNC3(vp, 0);
	FUNC1(dmp);
	FUNC4(dmp);
	if (FUNC0(dmp)) {
		FUNC8(&dmp->dm_lock);
		FUNC6(dmp);
		return (ENOENT);
	}
	error = FUNC5(dmp, ap->a_command, ap->a_data, ap->a_td);
	FUNC8(&dmp->dm_lock);
	return (error);
}