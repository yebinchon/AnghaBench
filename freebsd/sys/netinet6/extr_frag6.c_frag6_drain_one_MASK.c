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
typedef  scalar_t__ uint32_t ;
struct ip6q {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ IP6REASS_NHASH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ip6q* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ip6q*,scalar_t__) ; 
 int /*<<< orphan*/  ip6s_fragdropped ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct ip6q *q6;
	uint32_t bucket;

	for (bucket = 0; bucket < IP6REASS_NHASH; bucket++) {
		FUNC1(bucket);
		while ((q6 = FUNC4(FUNC0(bucket))) != NULL) {
			FUNC3(ip6s_fragdropped);
			/* XXX in6_ifstat_inc(ifp, ifs6_reass_fail) */
			FUNC5(q6, bucket);
		}
		FUNC2(bucket);
	}
}