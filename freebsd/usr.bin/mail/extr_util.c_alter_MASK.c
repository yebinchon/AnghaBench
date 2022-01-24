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
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  UTIME_OMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct timespec*,int /*<<< orphan*/ ) ; 

void
FUNC2(char *name)
{
	struct timespec ts[2];

	(void)FUNC0(CLOCK_REALTIME, &ts[0]);
	ts[0].tv_sec++;
	ts[1].tv_sec = 0;
	ts[1].tv_nsec = UTIME_OMIT;
	(void)FUNC1(AT_FDCWD, name, ts, 0);
}