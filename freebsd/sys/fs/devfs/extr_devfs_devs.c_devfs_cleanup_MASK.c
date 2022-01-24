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
struct devfs_mount {int /*<<< orphan*/  dm_rootdir; int /*<<< orphan*/  dm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SX_XLOCKED ; 
 scalar_t__ FUNC0 (struct devfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct devfs_mount *dm)
{

	FUNC2(&dm->dm_lock, SX_XLOCKED);
	while (FUNC0(dm, 1))
		continue;
	FUNC1(dm, dm->dm_rootdir);
}