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
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,struct timeval*,struct timeval*) ; 

__attribute__((used)) static __inline uint64_t
FUNC5(struct timeval *prev, struct timeval *cur,
		int report_interval)
{
	struct timeval delta;

	delta.tv_sec = report_interval/1000;
	delta.tv_usec = (report_interval%1000)*1000;
	if (FUNC3(0, NULL, NULL, NULL, &delta) < 0 && errno != EINTR) {
		FUNC2("select");
		FUNC0();
	}
	FUNC1(cur, NULL);
	FUNC4(cur, prev, &delta);
	return delta.tv_sec* 1000000 + delta.tv_usec;
}