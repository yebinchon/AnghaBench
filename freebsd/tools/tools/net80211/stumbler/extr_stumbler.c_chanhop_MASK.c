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
struct timeval {unsigned long tv_sec; unsigned long tv_usec; } ;
struct TYPE_2__ {int chan; int /*<<< orphan*/  last_hop; } ;

/* Variables and functions */
 TYPE_1__ chaninfo ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 unsigned long hopfreq ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct timeval* tv) {
	unsigned long elapsed = 0;

	if (FUNC2(tv, NULL) == -1)
		FUNC0(1, "gettimeofday()");


	elapsed = FUNC1(tv, &chaninfo.last_hop);

	// need to chan hop
	if (elapsed >= hopfreq) {
		int c;

		c = chaninfo.chan + 1;

		if (c > 11)
			c = 1;

		FUNC3(c);

		elapsed = hopfreq;
	} 
	// how much can we sleep?
	else {
		elapsed = hopfreq - elapsed;
	}

	// ok calculate sleeping time...
	tv->tv_sec = elapsed/1000;
	tv->tv_usec = (elapsed - tv->tv_sec*1000)*1000;
}