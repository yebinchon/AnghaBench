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
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME_PRECISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct timespec FUNC2 (struct timespec,struct timespec) ; 

__attribute__((used)) static struct timespec
FUNC3(struct timespec ts)
{
	for (;;) {
		struct timespec w, cur;
		FUNC0(CLOCK_REALTIME_PRECISE, &cur);
		w = FUNC2(ts, cur);
		if (w.tv_sec < 0)
			return cur;
		else if (w.tv_sec > 0 || w.tv_nsec > 1000000)
			FUNC1(NULL, 0, 1);
	}
}