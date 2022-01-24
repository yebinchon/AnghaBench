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
struct cpuset {int dummy; } ;

/* Variables and functions */
 struct cpuset* FUNC0 (struct setlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_zone ; 
 int /*<<< orphan*/  cs_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cpuset*) ; 

__attribute__((used)) static void
FUNC3(struct setlist *list)
{
	struct cpuset *set;

	while ((set = FUNC0(list)) != NULL) {
		FUNC1(set, cs_link);
		FUNC2(cpuset_zone, set);
	}
}