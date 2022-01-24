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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int watchdog_timeout; int /*<<< orphan*/  os; int /*<<< orphan*/  watchdog_timer; } ;
typedef  TYPE_1__ ocs_hw_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocs_hw_watchdog_timer_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void  *arg)
{
	uint16_t timeout = hw->watchdog_timeout;

	if (status != 0) {
		FUNC2(hw->os, "config watchdog timer failed, rc = %d\n", status);
	} else {
		if(timeout != 0) {
			/* keeping callback 500ms before timeout to keep heartbeat alive */
			FUNC3(hw->os, &hw->watchdog_timer, ocs_hw_watchdog_timer_cb, hw, (timeout*1000 - 500) );
		}else {
			FUNC0(&hw->watchdog_timer);
		}
	}

	FUNC1(hw->os, mqe, SLI4_BMBX_SIZE);
	return;
}