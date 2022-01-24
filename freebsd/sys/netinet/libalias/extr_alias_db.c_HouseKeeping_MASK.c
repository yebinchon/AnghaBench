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
struct timeval {int tv_sec; } ;
struct libalias {int timeStamp; int lastCleanupTime; } ;

/* Variables and functions */
 int ALIAS_CLEANUP_INTERVAL_SECS ; 
 int ALIAS_CLEANUP_MAX_SPOKES ; 
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
 int LINK_TABLE_OUT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int time_uptime ; 

void
FUNC4(struct libalias *la)
{
	int i, n;
#ifndef	_KERNEL
	struct timeval tv;
#endif

	FUNC1(la);
	/*
	 * Save system time (seconds) in global variable timeStamp for use
	 * by other functions. This is done so as not to unnecessarily
	 * waste timeline by making system calls.
	 */
#ifdef	_KERNEL
	la->timeStamp = time_uptime;
#else
	FUNC3(&tv, NULL);
	la->timeStamp = tv.tv_sec;
#endif

	/* Compute number of spokes (output table link chains) to cover */
	n = LINK_TABLE_OUT_SIZE * (la->timeStamp - la->lastCleanupTime);
	n /= ALIAS_CLEANUP_INTERVAL_SECS;

	/* Handle different cases */
	if (n > 0) {
		if (n > ALIAS_CLEANUP_MAX_SPOKES)
			n = ALIAS_CLEANUP_MAX_SPOKES;
		la->lastCleanupTime = la->timeStamp;
		for (i = 0; i < n; i++)
			FUNC0(la);
	} else if (n < 0) {
#ifdef LIBALIAS_DEBUG
		fprintf(stderr, "PacketAlias/HouseKeeping(): ");
		fprintf(stderr, "something unexpected in time values\n");
#endif
		la->lastCleanupTime = la->timeStamp;
	}
}