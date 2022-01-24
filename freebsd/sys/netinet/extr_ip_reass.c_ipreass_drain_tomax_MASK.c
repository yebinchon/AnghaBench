#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipq {int dummy; } ;
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IPREASS_NHASH ; 
 struct ipq* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* V_ipq ; 
 int /*<<< orphan*/  V_ipq_zone ; 
 scalar_t__ V_ipreass_maxbucketsize ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ipq*) ; 
 int /*<<< orphan*/  ipqhead ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct ipq *fp;
	int target;

	/*
	 * Make sure each bucket is under the new limit. If
	 * necessary, drop enough of the oldest elements from
	 * each bucket to get under the new limit.
	 */
	for (int i = 0; i < IPREASS_NHASH; i++) {
		FUNC0(i);
		while (V_ipq[i].count > V_ipreass_maxbucketsize &&
		    (fp = FUNC2(&V_ipq[i].head, ipqhead)) != NULL)
			FUNC3(&V_ipq[i], fp);
		FUNC1(i);
	}

	/*
	 * If we are over the maximum number of fragments,
	 * drain off enough to get down to the new limit,
	 * stripping off last elements on queues.  Every
	 * run we strip the oldest element from each bucket.
	 */
	target = FUNC5(V_ipq_zone);
	while (FUNC4(V_ipq_zone) > target) {
		for (int i = 0; i < IPREASS_NHASH; i++) {
			FUNC0(i);
			fp = FUNC2(&V_ipq[i].head, ipqhead);
			if (fp != NULL)
				FUNC3(&V_ipq[i], fp);
			FUNC1(i);
		}
	}
}