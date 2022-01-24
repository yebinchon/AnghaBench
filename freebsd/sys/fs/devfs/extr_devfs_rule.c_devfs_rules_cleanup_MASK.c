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
struct devfs_ruleset {int /*<<< orphan*/  ds_refcount; } ;
struct devfs_mount {scalar_t__ dm_ruleset; int /*<<< orphan*/  dm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SX_XLOCKED ; 
 struct devfs_ruleset* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct devfs_ruleset*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct devfs_mount *dm)
{
	struct devfs_ruleset *ds;

	FUNC2(&dm->dm_lock, SX_XLOCKED);
	if (dm->dm_ruleset != 0) {
		ds = FUNC0(dm->dm_ruleset);
		--ds->ds_refcount;
		FUNC1(ds);
	}
}