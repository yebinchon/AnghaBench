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
struct devfs_ruleset {int dummy; } ;
struct devfs_mount {scalar_t__ dm_ruleset; int /*<<< orphan*/  dm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct devfs_ruleset*,struct devfs_mount*) ; 
 struct devfs_ruleset* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sx_rules ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct devfs_mount *dm)
{
	struct devfs_ruleset *ds;

	FUNC2(&dm->dm_lock, SX_XLOCKED);

	FUNC3(&sx_rules);
	if (dm->dm_ruleset == 0) {
		FUNC4(&sx_rules);
		return;
	}
	ds = FUNC1(dm->dm_ruleset);
	if (ds != NULL)
		FUNC0(ds, dm);
	FUNC4(&sx_rules);
}