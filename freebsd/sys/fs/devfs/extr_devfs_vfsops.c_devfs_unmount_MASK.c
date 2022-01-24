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
typedef  int /*<<< orphan*/  u_int ;
struct mount {int /*<<< orphan*/ * mnt_data; } ;
struct devfs_mount {int dm_holdcnt; int /*<<< orphan*/  dm_lock; int /*<<< orphan*/  dm_idx; int /*<<< orphan*/ * dm_mount; } ;

/* Variables and functions */
 int FORCECLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MNT_FORCE ; 
 struct devfs_mount* FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct devfs_mount*) ; 
 int /*<<< orphan*/  devfs_unr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mount*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct mount *mp, int mntflags)
{
	int error;
	int flags = 0;
	struct devfs_mount *fmp;
	int hold;
	u_int idx;

	fmp = FUNC1(mp);
	FUNC0(fmp->dm_mount != NULL,
		("devfs_unmount unmounted devfs_mount"));
	if (mntflags & MNT_FORCE)
		flags |= FORCECLOSE;
	/* There is 1 extra root vnode reference from devfs_mount(). */
	error = FUNC8(mp, 1, flags, curthread);
	if (error)
		return (error);
	FUNC6(&fmp->dm_lock);
	FUNC2(fmp);
	FUNC3(fmp);
	fmp->dm_mount = NULL;
	hold = --fmp->dm_holdcnt;
	mp->mnt_data = NULL;
	idx = fmp->dm_idx;
	FUNC7(&fmp->dm_lock);
	FUNC5(devfs_unr, idx);
	if (hold == 0)
		FUNC4(fmp);
	return 0;
}