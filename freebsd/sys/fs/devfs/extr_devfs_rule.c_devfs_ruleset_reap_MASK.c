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
struct devfs_ruleset {scalar_t__ ds_number; scalar_t__ ds_refcount; int /*<<< orphan*/  ds_rules; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVFSRULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct devfs_ruleset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devfs_rulesets ; 
 int /*<<< orphan*/  ds_list ; 
 int /*<<< orphan*/  FUNC3 (struct devfs_ruleset*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct devfs_ruleset *ds)
{

	FUNC0(ds->ds_number != 0, ("reaping ruleset zero "));

	if (!FUNC1(&ds->ds_rules) || ds->ds_refcount != 0) 
		return;

	FUNC2(&devfs_rulesets, ds, ds_list);
	FUNC3(ds, M_DEVFSRULE);
}