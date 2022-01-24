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
struct devfs_dirent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  devfs_rule_depth ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_ruleset*,struct devfs_mount*,struct devfs_dirent*,int /*<<< orphan*/ ) ; 
 struct devfs_ruleset* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sx_rules ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct devfs_mount *dm, struct devfs_dirent *de)
{
	struct devfs_ruleset *ds;

	FUNC3(&dm->dm_lock, SX_XLOCKED);

	if (dm->dm_ruleset == 0)
		return;
	FUNC4(&sx_rules);
	ds = FUNC2(dm->dm_ruleset);
	FUNC0(ds != NULL, ("mount-point has NULL ruleset"));
	FUNC1(ds, dm, de, devfs_rule_depth);
	FUNC5(&sx_rules);
}