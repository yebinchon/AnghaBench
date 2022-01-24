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
struct devfs_mount {struct devfs_dirent* dm_rootdir; int /*<<< orphan*/  dm_lock; } ;
struct devfs_dirent {int de_flags; int /*<<< orphan*/  de_dlist; TYPE_1__* de_dirent; } ;
struct TYPE_2__ {scalar_t__ d_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVFS_DEL_NORECURSE ; 
 scalar_t__ FUNC0 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_dirent*) ; 
 int DE_DOOMED ; 
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 struct devfs_dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 struct devfs_dirent* FUNC4 (struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  de_list ; 
 int /*<<< orphan*/  FUNC6 (struct devfs_mount*,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct devfs_dirent*) ; 
 struct devfs_dirent* FUNC8 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct devfs_mount *dm, struct devfs_dirent *de)
{
	struct devfs_dirent *dd, *de_dot, *de_dotdot;

	FUNC9(&dm->dm_lock, SX_XLOCKED);

	for (;;) {
		FUNC2(de->de_dirent->d_type == DT_DIR,
		    ("devfs_rmdir_empty: de is not a directory"));

		if ((de->de_flags & DE_DOOMED) != 0 || de == dm->dm_rootdir)
			return;

		de_dot = FUNC3(&de->de_dlist);
		FUNC2(de_dot != NULL, ("devfs_rmdir_empty: . missing"));
		de_dotdot = FUNC4(de_dot, de_list);
		FUNC2(de_dotdot != NULL, ("devfs_rmdir_empty: .. missing"));
		/* Return if the directory is not empty. */
		if (FUNC4(de_dotdot, de_list) != NULL)
			return;

		dd = FUNC8(de);
		FUNC2(dd != NULL, ("devfs_rmdir_empty: NULL dd"));
		FUNC5(&de->de_dlist, de_dot, de_list);
		FUNC5(&de->de_dlist, de_dotdot, de_list);
		FUNC5(&dd->de_dlist, de, de_list);
		FUNC1(dd);
		FUNC6(dm, de, DEVFS_DEL_NORECURSE);
		FUNC6(dm, de_dot, DEVFS_DEL_NORECURSE);
		FUNC6(dm, de_dotdot, DEVFS_DEL_NORECURSE);
		if (FUNC0(dd)) {
			FUNC7(dd);
			return;
		}

		de = dd;
	}
}