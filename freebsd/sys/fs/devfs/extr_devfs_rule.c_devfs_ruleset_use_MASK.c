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
struct devfs_mount {scalar_t__ dm_ruleset; } ;
typedef  scalar_t__ devfs_rsnum ;

/* Variables and functions */
 struct devfs_ruleset* FUNC0 (scalar_t__) ; 
 struct devfs_ruleset* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct devfs_ruleset*) ; 

__attribute__((used)) static int
FUNC3(devfs_rsnum rsnum, struct devfs_mount *dm)
{
	struct devfs_ruleset *cds, *ds;

	if (dm->dm_ruleset != 0) {
		cds = FUNC0(dm->dm_ruleset);
		--cds->ds_refcount;
		FUNC2(cds);
	}

	if (rsnum == 0) {
		dm->dm_ruleset = 0;
		return (0);
	}

	ds = FUNC0(rsnum);
	if (ds == NULL)
		ds = FUNC1(rsnum);
	/* These should probably be made atomic somehow. */
	++ds->ds_refcount;
	dm->dm_ruleset = rsnum;

	return (0);
}