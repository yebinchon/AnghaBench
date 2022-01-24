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
struct setlist {int dummy; } ;
struct cpuset {scalar_t__ cs_id; int /*<<< orphan*/  cs_ref; } ;

/* Variables and functions */
 scalar_t__ CPUSET_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct setlist*,struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_lock ; 
 int /*<<< orphan*/  cs_link ; 
 int /*<<< orphan*/  cs_siblings ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct setlist *head, struct cpuset *set)
{

	if (FUNC4(&set->cs_ref) == 0)
		return;
	FUNC2(&cpuset_lock);
	FUNC1(set, cs_siblings);
	if (set->cs_id != CPUSET_INVALID)
		FUNC1(set, cs_link);
	FUNC0(head, set, cs_link);
	FUNC3(&cpuset_lock);
}