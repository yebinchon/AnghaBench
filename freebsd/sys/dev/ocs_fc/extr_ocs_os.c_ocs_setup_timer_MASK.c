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
struct TYPE_4__ {void (* func ) (void*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  callout; void* data; } ;
typedef  TYPE_1__ ocs_timer_t ;
typedef  int /*<<< orphan*/  ocs_os_handle_t ;
typedef  int int32_t ;

/* Variables and functions */
 int INT32_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  __ocs_callout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (struct timeval*) ; 

int32_t
FUNC8(ocs_os_handle_t os, ocs_timer_t *timer, void(*func)(void *arg), void *data, uint32_t timeout_ms)
{
	struct	timeval tv;
	int	hz;

	if (timer == NULL) {
		FUNC6(NULL, "bad parameter\n");
		return -1;
	}

	if (!FUNC3(&timer->lock)) {
		FUNC2(&timer->lock, "ocs_timer", NULL, MTX_DEF);
	}

	FUNC0(&timer->callout, &timer->lock, 0);

	timer->func = func;
	timer->data = data;

	tv.tv_sec  = timeout_ms / 1000;
	tv.tv_usec = (timeout_ms % 1000) * 1000;

	hz = FUNC7(&tv);
	if (hz < 0)
		hz = INT32_MAX;
	if (hz == 0)
		hz = 1;

	FUNC4(&timer->lock);
		FUNC1(&timer->callout, hz, __ocs_callout, timer);
	FUNC5(&timer->lock);

	return 0;
}