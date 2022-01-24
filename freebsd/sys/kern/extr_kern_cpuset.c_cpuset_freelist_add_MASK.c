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
 int /*<<< orphan*/  FUNC0 (struct setlist*,struct cpuset*,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  cpuset_zone ; 
 int /*<<< orphan*/  cs_link ; 
 struct cpuset* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct setlist *list, int count)
{
	struct cpuset *set;
	int i;

	for (i = 0; i < count; i++) {
		set = FUNC1(cpuset_zone, M_ZERO | M_WAITOK);
		FUNC0(list, set, cs_link);
	}
}