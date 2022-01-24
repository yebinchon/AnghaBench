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
typedef  scalar_t__ u_int ;
struct devfs_mount {int /*<<< orphan*/  dm_mount; int /*<<< orphan*/  dm_lock; } ;
struct devfs_dirent {int de_mode; int de_links; int /*<<< orphan*/  de_dlist; struct devfs_dirent* de_dir; int /*<<< orphan*/  de_flags; TYPE_1__* de_dirent; scalar_t__ de_inode; } ;
struct TYPE_2__ {void* d_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE_DOT ; 
 int /*<<< orphan*/  DE_DOTDOT ; 
 void* DT_DIR ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  de_list ; 
 int /*<<< orphan*/  devfs_inos ; 
 struct devfs_dirent* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct devfs_mount*,struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct devfs_dirent *
FUNC7(struct devfs_mount *dmp, char *name, int namelen,
    struct devfs_dirent *dotdot, u_int inode)
{
	struct devfs_dirent *dd;
	struct devfs_dirent *de;

	/* Create the new directory */
	dd = FUNC3(name, namelen);
	FUNC0(&dd->de_dlist);
	dd->de_dirent->d_type = DT_DIR;
	dd->de_mode = 0555;
	dd->de_links = 2;
	dd->de_dir = dd;
	if (inode != 0)
		dd->de_inode = inode;
	else
		dd->de_inode = FUNC2(devfs_inos);

	/*
	 * "." and ".." are always the two first entries in the
	 * de_dlist list.
	 *
	 * Create the "." entry in the new directory.
	 */
	de = FUNC3(".", 1);
	de->de_dirent->d_type = DT_DIR;
	de->de_flags |= DE_DOT;
	FUNC1(&dd->de_dlist, de, de_list);
	de->de_dir = dd;

	/* Create the ".." entry in the new directory. */
	de = FUNC3("..", 2);
	de->de_dirent->d_type = DT_DIR;
	de->de_flags |= DE_DOTDOT;
	FUNC1(&dd->de_dlist, de, de_list);
	if (dotdot == NULL) {
		de->de_dir = dd;
	} else {
		de->de_dir = dotdot;
		FUNC6(&dmp->dm_lock, SX_XLOCKED);
		FUNC1(&dotdot->de_dlist, dd, de_list);
		dotdot->de_links++;
		FUNC4(dmp, dd);
	}

#ifdef MAC
	mac_devfs_create_directory(dmp->dm_mount, name, namelen, dd);
#endif
	return (dd);
}