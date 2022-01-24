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
struct vop_remove_args {struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {struct devfs_dirent* v_data; int /*<<< orphan*/  v_mount; } ;
struct devfs_mount {int /*<<< orphan*/  dm_lock; } ;
struct devfs_dirent {int /*<<< orphan*/  de_flags; TYPE_1__* de_dirent; int /*<<< orphan*/  de_dlist; int /*<<< orphan*/ * de_cdp; } ;
struct TYPE_2__ {scalar_t__ d_type; int /*<<< orphan*/  d_namlen; int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  DE_COVERED ; 
 int /*<<< orphan*/  DE_WHITEOUT ; 
 scalar_t__ DT_LNK ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 struct devfs_mount* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  de_list ; 
 int /*<<< orphan*/  FUNC4 (struct devfs_mount*,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 struct devfs_dirent* FUNC5 (struct devfs_dirent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int) ; 

__attribute__((used)) static int
FUNC9(struct vop_remove_args *ap)
{
	struct vnode *dvp = ap->a_dvp;
	struct vnode *vp = ap->a_vp;
	struct devfs_dirent *dd;
	struct devfs_dirent *de, *de_covered;
	struct devfs_mount *dmp = FUNC2(vp->v_mount);

	FUNC0(dvp, "devfs_remove");
	FUNC0(vp, "devfs_remove");

	FUNC6(&dmp->dm_lock);
	dd = ap->a_dvp->v_data;
	de = vp->v_data;
	if (de->de_cdp == NULL) {
		FUNC1(&dd->de_dlist, de, de_list);
		if (de->de_dirent->d_type == DT_LNK) {
			de_covered = FUNC5(dd, de->de_dirent->d_name,
			    de->de_dirent->d_namlen, 0);
			if (de_covered != NULL)
				de_covered->de_flags &= ~DE_COVERED;
		}
		/* We need to unlock dvp because devfs_delete() may lock it. */
		FUNC3(vp, 0);
		if (dvp != vp)
			FUNC3(dvp, 0);
		FUNC4(dmp, de, 0);
		FUNC7(&dmp->dm_lock);
		if (dvp != vp)
			FUNC8(dvp, LK_EXCLUSIVE | LK_RETRY);
		FUNC8(vp, LK_EXCLUSIVE | LK_RETRY);
	} else {
		de->de_flags |= DE_WHITEOUT;
		FUNC7(&dmp->dm_lock);
	}
	return (0);
}