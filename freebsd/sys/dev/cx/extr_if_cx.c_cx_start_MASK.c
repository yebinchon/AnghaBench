#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  timeout_handle; TYPE_3__* chan; scalar_t__ running; } ;
typedef  TYPE_1__ drv_t ;
struct TYPE_8__ {int /*<<< orphan*/  rts; int /*<<< orphan*/  dtr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  cx_watchdog_timer ; 
 int /*<<< orphan*/  hz ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6 (drv_t *d)
{
	int s = FUNC4 ();
	if (d->running) {
		if (! d->chan->dtr)
			FUNC2 (d->chan, 1);
		if (! d->chan->rts)
			FUNC3 (d->chan, 1);
		FUNC1 (d);
		FUNC0 (&d->timeout_handle, hz, cx_watchdog_timer, d);
	}
	FUNC5 (s);
}