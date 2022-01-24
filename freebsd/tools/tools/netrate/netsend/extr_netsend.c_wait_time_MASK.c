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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct timespec*,struct timespec*) ; 

__attribute__((used)) static int
FUNC4(struct timespec ts, struct timespec *wakeup_ts, long long *waited)
{
	struct timespec curtime;

	curtime.tv_sec = 0;
	curtime.tv_nsec = 0;

	if (FUNC0(CLOCK_REALTIME, &curtime) == -1) {
		FUNC1("clock_gettime");
		return (-1);
	}
#if 0
	if (timespec_ge(&curtime, &ts))
		printf("warning: wait_time missed deadline without spinning\n");
#endif
	while (FUNC3(&ts, &curtime)) {
		if (waited != NULL)
			(*waited)++;
		if (FUNC0(CLOCK_REALTIME, &curtime) == -1) {
			FUNC1("clock_gettime");
			return (-1);
		}
	}
	if (wakeup_ts != NULL)
		*wakeup_ts = curtime;
	return (0);
}