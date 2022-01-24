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
struct cpuset {int /*<<< orphan*/  cs_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_zone ; 
 int /*<<< orphan*/  cs_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cpuset*) ; 

__attribute__((used)) static void
FUNC3(struct cpuset *set)
{
	FUNC0(set, cs_link);
	FUNC1(set->cs_parent);
	FUNC2(cpuset_zone, set);
}