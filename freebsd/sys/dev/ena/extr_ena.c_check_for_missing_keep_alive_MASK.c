#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  wd_expired; } ;
struct ena_adapter {scalar_t__ wd_active; scalar_t__ keep_alive_timeout; int /*<<< orphan*/  reset_reason; TYPE_1__ dev_stats; int /*<<< orphan*/  pdev; int /*<<< orphan*/  keep_alive_timestamp; } ;
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ; 
 int /*<<< orphan*/  ENA_REGS_RESET_KEEP_ALIVE_TO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ena_adapter *adapter)
{
	sbintime_t timestamp, time;

	if (adapter->wd_active == 0)
		return;

	if (adapter->keep_alive_timeout == ENA_HW_HINTS_NO_TIMEOUT)
		return;

	timestamp = FUNC2(&adapter->keep_alive_timestamp);
	time = FUNC5() - timestamp;
	if (FUNC7(time > adapter->keep_alive_timeout)) {
		FUNC4(adapter->pdev,
		    "Keep alive watchdog timeout.\n");
		FUNC3(adapter->dev_stats.wd_expired, 1);
		if (FUNC6(!FUNC0(ENA_FLAG_TRIGGER_RESET, adapter))) {
			adapter->reset_reason = ENA_REGS_RESET_KEEP_ALIVE_TO;
			FUNC1(ENA_FLAG_TRIGGER_RESET, adapter);
		}
	}
}