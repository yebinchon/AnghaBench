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
typedef  int /*<<< orphan*/  devfs_rsnum ;

/* Variables and functions */
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct devfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sx_rules ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(devfs_rsnum rsnum, struct devfs_mount *dm)
{

	FUNC1(&dm->dm_lock, SX_XLOCKED);

	FUNC2(&sx_rules);
	FUNC0(rsnum, dm);
	FUNC3(&sx_rules);
}