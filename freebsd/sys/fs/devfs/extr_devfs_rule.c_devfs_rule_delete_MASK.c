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
struct devfs_ruleset {int /*<<< orphan*/  ds_rules; int /*<<< orphan*/  ds_refcount; } ;
struct TYPE_2__ {int dr_iacts; int /*<<< orphan*/  dr_incset; } ;
struct devfs_krule {struct devfs_ruleset* dk_ruleset; TYPE_1__ dk_rule; } ;

/* Variables and functions */
 int DRA_INCSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVFSRULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct devfs_krule*,int /*<<< orphan*/ ) ; 
 struct devfs_ruleset* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devfs_ruleset*) ; 
 int /*<<< orphan*/  dk_list ; 
 int /*<<< orphan*/  FUNC4 (struct devfs_krule*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct devfs_krule *dk)
{
	struct devfs_ruleset *ds;

	if (dk->dk_rule.dr_iacts & DRA_INCSET) {
		ds = FUNC2(dk->dk_rule.dr_incset);
		FUNC0(ds != NULL, ("DRA_INCSET but bad dr_incset"));
		--ds->ds_refcount;
		FUNC3(ds);
	}
	ds = dk->dk_ruleset;
	FUNC1(&ds->ds_rules, dk, dk_list);
	FUNC3(ds);
	FUNC4(dk, M_DEVFSRULE);
	return (0);
}