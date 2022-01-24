#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  callout; } ;
typedef  TYPE_1__ ocs_timer_t ;
typedef  int int32_t ;

/* Variables and functions */
 int INT32_MAX ; 
 int /*<<< orphan*/  __ocs_callout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct timeval*) ; 

int32_t
FUNC5(ocs_timer_t *timer, uint32_t timeout_ms)
{
	struct	timeval tv;
	int	hz;

	if (timer == NULL) {
		FUNC3(NULL, "bad parameter\n");
		return -1;
	}

	tv.tv_sec  = timeout_ms / 1000;
	tv.tv_usec = (timeout_ms % 1000) * 1000;

	hz = FUNC4(&tv);
	if (hz < 0)
		hz = INT32_MAX;
	if (hz == 0)
		hz = 1;

	FUNC1(&timer->lock);
		FUNC0(&timer->callout, hz, __ocs_callout, timer);
	FUNC2(&timer->lock);

	return 0;
}