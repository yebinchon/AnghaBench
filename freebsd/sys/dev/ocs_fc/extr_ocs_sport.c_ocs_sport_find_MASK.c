#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ocs_sport_t ;
struct TYPE_4__ {int /*<<< orphan*/  lookup_lock; int /*<<< orphan*/ * lookup; int /*<<< orphan*/  ocs; } ;
typedef  TYPE_1__ ocs_domain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ocs_sport_t *
FUNC5(ocs_domain_t *domain, uint32_t d_id)
{
	ocs_sport_t *sport;

	FUNC0(domain, NULL);
	FUNC1(&domain->lookup_lock);
		if (domain->lookup == NULL) {
			FUNC2(domain->ocs, "assertion failed: domain->lookup is not valid\n");
			FUNC3(&domain->lookup_lock);
			return NULL;
		}

		sport = FUNC4(domain->lookup, d_id);
	FUNC3(&domain->lookup_lock);
	return sport;
}