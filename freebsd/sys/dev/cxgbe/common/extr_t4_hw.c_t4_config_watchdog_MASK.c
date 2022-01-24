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
struct fw_watchdog_cmd {void* action; void* timeout; void* retval_len16; void* op_to_vfn; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct fw_watchdog_cmd) ; 
 int /*<<< orphan*/  FW_WATCHDOG_CMD ; 
 unsigned int F_FW_CMD_REQUEST ; 
 unsigned int F_FW_CMD_WRITE ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_watchdog_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,unsigned int,struct fw_watchdog_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adapter, unsigned int mbox,
		       unsigned int pf, unsigned int vf,
		       unsigned int timeout, unsigned int action)
{
	struct fw_watchdog_cmd wdog;
	unsigned int ticks;

	/*
	 * The watchdog command expects a timeout in units of 10ms so we need
	 * to convert it here (via rounding) and force a minimum of one 10ms
	 * "tick" if the timeout is non-zero but the conversion results in 0
	 * ticks.
	 */
	ticks = (timeout + 5)/10;
	if (timeout && !ticks)
		ticks = 1;

	FUNC5(&wdog, 0, sizeof wdog);
	wdog.op_to_vfn = FUNC4(FUNC1(FW_WATCHDOG_CMD) |
				     F_FW_CMD_REQUEST |
				     F_FW_CMD_WRITE |
				     FUNC2(pf) |
				     FUNC3(vf));
	wdog.retval_len16 = FUNC4(FUNC0(wdog));
	wdog.timeout = FUNC4(ticks);
	wdog.action = FUNC4(action);

	return FUNC6(adapter, mbox, &wdog, sizeof wdog, NULL);
}