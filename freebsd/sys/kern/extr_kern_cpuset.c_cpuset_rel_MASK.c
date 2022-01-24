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
struct cpuset {scalar_t__ cs_id; struct cpuset* cs_parent; int /*<<< orphan*/  cs_ref; } ;
typedef  scalar_t__ cpusetid_t ;

/* Variables and functions */
 scalar_t__ CPUSET_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_lock ; 
 int /*<<< orphan*/  cpuset_unr ; 
 int /*<<< orphan*/  cpuset_zone ; 
 int /*<<< orphan*/  cs_link ; 
 int /*<<< orphan*/  cs_siblings ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cpuset*) ; 

void
FUNC6(struct cpuset *set)
{
	cpusetid_t id;

	if (FUNC4(&set->cs_ref) == 0)
		return;
	FUNC2(&cpuset_lock);
	FUNC0(set, cs_siblings);
	id = set->cs_id;
	if (id != CPUSET_INVALID)
		FUNC0(set, cs_link);
	FUNC3(&cpuset_lock);
	FUNC6(set->cs_parent);
	FUNC5(cpuset_zone, set);
	if (id != CPUSET_INVALID)
		FUNC1(cpuset_unr, id);
}