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
struct vnode {int v_iflag; struct devfs_dirent* v_data; int /*<<< orphan*/  v_mount; } ;
struct devfs_mount {int /*<<< orphan*/  dm_lock; } ;
struct devfs_dirent {int de_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 scalar_t__ FUNC1 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct devfs_mount*) ; 
 int DE_DOOMED ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int LK_RETRY ; 
 struct devfs_mount* FUNC4 (int /*<<< orphan*/ ) ; 
 int VI_DOOMED ; 
 int FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC8 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC12(struct vnode *vp)
{
	struct devfs_dirent *de;
	struct devfs_mount *dmp;
	int locked;

	FUNC0(vp, "devfs_populate_vp");

	dmp = FUNC4(vp->v_mount);
	locked = FUNC5(vp);

	FUNC9(&dmp->dm_lock);
	FUNC2(dmp);

	/* Can't call devfs_populate() with the vnode lock held. */
	FUNC6(vp, 0);
	FUNC7(dmp);

	FUNC10(&dmp->dm_lock);
	FUNC11(vp, locked | LK_RETRY);
	FUNC9(&dmp->dm_lock);
	if (FUNC1(dmp)) {
		FUNC10(&dmp->dm_lock);
		FUNC8(dmp);
		return (ERESTART);
	}
	if ((vp->v_iflag & VI_DOOMED) != 0) {
		FUNC10(&dmp->dm_lock);
		return (ERESTART);
	}
	de = vp->v_data;
	FUNC3(de != NULL,
	    ("devfs_populate_vp: vp->v_data == NULL but vnode not doomed"));
	if ((de->de_flags & DE_DOOMED) != 0) {
		FUNC10(&dmp->dm_lock);
		return (ERESTART);
	}

	return (0);
}