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
typedef  int uint32_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_2__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct bridge_if {TYPE_1__ last_tc_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bridge_if *bif, uint32_t *ticks)
{
	struct timeval ct;

	if (FUNC0(&ct, NULL) < 0) {
		FUNC2(LOG_ERR, "bridge get time since last TC:"
		    "gettimeofday failed: %s", FUNC1(errno));
		return (-1);
	}

	if (ct.tv_usec - bif->last_tc_time.tv_usec < 0) {
		ct.tv_sec -= 1;
		ct.tv_usec += 1000000;
	}

	ct.tv_sec -= bif->last_tc_time.tv_sec;
	ct.tv_usec -= bif->last_tc_time.tv_usec;

	*ticks = ct.tv_sec * 100 + ct.tv_usec/10000;

	return (0);
}