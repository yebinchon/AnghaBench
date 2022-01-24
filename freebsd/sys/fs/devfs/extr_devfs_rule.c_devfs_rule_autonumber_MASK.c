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
struct devfs_ruleset {int /*<<< orphan*/  ds_number; int /*<<< orphan*/  ds_rules; } ;
struct TYPE_2__ {int /*<<< orphan*/  dr_id; } ;
struct devfs_krule {TYPE_1__ dk_rule; } ;
typedef  scalar_t__ devfs_rnum ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct devfs_krule* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rulehead ; 

__attribute__((used)) static int
FUNC5(struct devfs_ruleset *ds, devfs_rnum *rnump)
{
	struct devfs_krule *dk;

	/* Find the last rule. */
	dk = FUNC1(&ds->ds_rules, rulehead);
	if (dk == NULL)
		*rnump = 100;
	else {
		*rnump = FUNC4(dk->dk_rule.dr_id) + 100;
		/* Detect overflow. */
		if (*rnump < FUNC4(dk->dk_rule.dr_id))
			return (ERANGE);
	}
	FUNC0(FUNC2(FUNC3(ds->ds_number, *rnump)) == NULL,
	    ("autonumbering resulted in an already existing rule"));
	return (0);
}