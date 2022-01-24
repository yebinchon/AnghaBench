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
struct devfs_mount {int /*<<< orphan*/  dm_lock; } ;
struct devfs_dirent {int de_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct devfs_dirent*) ; 
 scalar_t__ FUNC1 (struct devfs_mount*) ; 
 int DE_DOOMED ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct devfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(int drop_dm_lock, struct devfs_mount *dmp,
	struct devfs_dirent *de)
{
	int not_found;

	not_found = 0;
	if (de->de_flags & DE_DOOMED)
		not_found = 1;
	if (FUNC0(de)) {
		FUNC2(not_found == 1, ("DEVFS de dropped but not doomed"));
		FUNC3(de);
	}
	if (FUNC1(dmp)) {
		FUNC2(not_found == 1,
			("DEVFS mount struct freed before dirent"));
		not_found = 2;
		FUNC6(&dmp->dm_lock);
		FUNC4(dmp);
	}
	if (not_found == 1 || (drop_dm_lock && not_found != 2))
		FUNC5(&dmp->dm_lock);
	return (not_found);
}