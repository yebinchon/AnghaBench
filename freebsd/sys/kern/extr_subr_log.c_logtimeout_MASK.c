#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int sc_state; int /*<<< orphan*/  sc_callout; int /*<<< orphan*/ * sc_sigio; TYPE_1__ sc_selp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LOG_ASYNC ; 
 int /*<<< orphan*/  LOG_RDPRI ; 
 int SBT_1S ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void (*) (void*),int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_open ; 
 int /*<<< orphan*/  log_wakeup ; 
 int log_wakeups_per_second ; 
 TYPE_2__ logsoftc ; 
 scalar_t__ msgbuftrigger ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{

	if (!log_open)
		return;
	if (msgbuftrigger == 0)
		goto done;
	msgbuftrigger = 0;
	FUNC6(&logsoftc.sc_selp, LOG_RDPRI);
	FUNC1(&logsoftc.sc_selp.si_note, 0);
	if ((logsoftc.sc_state & LOG_ASYNC) && logsoftc.sc_sigio != NULL)
		FUNC4(&logsoftc.sc_sigio, SIGIO, 0);
	FUNC3(&log_wakeup, LOG_RDPRI);
done:
	if (log_wakeups_per_second < 1) {
		FUNC5("syslog wakeup is less than one.  Adjusting to 1.\n");
		log_wakeups_per_second = 1;
	}
	FUNC2(&logsoftc.sc_callout,
	    SBT_1S / log_wakeups_per_second, 0, logtimeout, NULL, FUNC0(1));
}