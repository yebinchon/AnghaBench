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
struct devfs_mount {int /*<<< orphan*/  dm_lock; } ;
struct devfs_dirent {int de_flags; scalar_t__ de_inode; int /*<<< orphan*/ * de_symlink; struct vnode* de_vnode; } ;

/* Variables and functions */
 int DEVFS_DEL_NORECURSE ; 
 int DEVFS_DEL_VNLOCKED ; 
 scalar_t__ FUNC0 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_dirent*) ; 
 scalar_t__ DEVFS_ROOTINO ; 
 int DE_DOOMED ; 
 int DE_USER ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_INTERLOCK ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  M_DEVFS ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devfs_de_interlock ; 
 int /*<<< orphan*/  FUNC6 (struct devfs_mount*,struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC7 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct devfs_dirent* FUNC9 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC10 (struct devfs_mount*,struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC18 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC19 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC20 (struct vnode*,int) ; 

void
FUNC21(struct devfs_mount *dm, struct devfs_dirent *de, int flags)
{
	struct devfs_dirent *dd;
	struct vnode *vp;

	FUNC2((de->de_flags & DE_DOOMED) == 0,
		("devfs_delete doomed dirent"));
	de->de_flags |= DE_DOOMED;

	if ((flags & DEVFS_DEL_NORECURSE) == 0) {
		dd = FUNC9(de);
		if (dd != NULL)
			FUNC1(dd);
		if (de->de_flags & DE_USER) {
			FUNC2(dd != NULL, ("devfs_delete: NULL dd"));
			FUNC6(dm, dd);
		}
	} else
		dd = NULL;

	FUNC13(&devfs_de_interlock);
	vp = de->de_vnode;
	if (vp != NULL) {
		FUNC3(vp);
		FUNC14(&devfs_de_interlock);
		FUNC19(vp);
		FUNC15(&dm->dm_lock);
		if ((flags & DEVFS_DEL_VNLOCKED) == 0)
			FUNC20(vp, LK_EXCLUSIVE | LK_INTERLOCK | LK_RETRY);
		else
			FUNC4(vp);
		FUNC18(vp);
		if ((flags & DEVFS_DEL_VNLOCKED) == 0)
			FUNC5(vp, 0);
		FUNC17(vp);
		FUNC16(&dm->dm_lock);
	} else
		FUNC14(&devfs_de_interlock);
	if (de->de_symlink) {
		FUNC11(de->de_symlink, M_DEVFS);
		de->de_symlink = NULL;
	}
#ifdef MAC
	mac_devfs_destroy(de);
#endif
	if (de->de_inode > DEVFS_ROOTINO) {
		FUNC8(de->de_inode);
		de->de_inode = 0;
	}
	if (FUNC0(de))
		FUNC7(de);

	if (dd != NULL) {
		if (FUNC0(dd))
			FUNC7(dd);
		else
			FUNC10(dm, dd);
	}
}