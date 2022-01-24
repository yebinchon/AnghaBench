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
typedef  int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct td_desc {int count; int byte_count; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,struct timespec*) ; 

__attribute__((used)) static void
FUNC5(struct td_desc **tp, int nsock, int nthreads)
{
	uint64_t c0, c1, bc0, bc1;
	struct timespec now, then, delta;
	/* now the parent collects and prints results */
	c0 = c1 = bc0 = bc1 = 0;
	FUNC0(CLOCK_REALTIME, &then);
	FUNC1(stderr, "start at %d.%09d\n", then.tv_sec, then.tv_nsec);
	while (1) {
		int i, nt = nsock * nthreads;
		int64_t dn;
		uint64_t pps, bps;

		if (FUNC3(NULL, 0, 500) < 0) 
			FUNC2("poll");
		c0 = bc0 = 0;
		for (i = 0; i < nt; i++) {
			c0 += tp[i]->count;
			bc0 += tp[i]->byte_count;
		}
		dn = c0 - c1;
		FUNC0(CLOCK_REALTIME, &now);
		delta = now;
		FUNC4(&delta, &then);
		then = now;
		pps = dn;
		pps = (pps * 1000000000) / (delta.tv_sec*1000000000 + delta.tv_nsec + 1);
		bps = ((bc0 - bc1) * 8000000000) / (delta.tv_sec*1000000000 + delta.tv_nsec + 1);
		FUNC1(stderr, " %9d pps %8.3d Mbps", (long)pps, .000001*bps);
		FUNC1(stderr, " - %d pkts in %d.%09d ns\n",
			(int)dn, delta.tv_sec, delta.tv_nsec);
		c1 = c0;
		bc1 = bc0;
	}
}