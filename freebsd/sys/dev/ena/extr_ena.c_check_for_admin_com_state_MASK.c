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
struct TYPE_2__ {int /*<<< orphan*/  admin_q_pause; } ;
struct ena_adapter {int /*<<< orphan*/  reset_reason; TYPE_1__ dev_stats; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_ADMIN_TO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ena_adapter *adapter)
{
	if (FUNC6(FUNC4(adapter->ena_dev) ==
	    false)) {
		FUNC3(adapter->pdev,
		    "ENA admin queue is not in running state!\n");
		FUNC2(adapter->dev_stats.admin_q_pause, 1);
		if (FUNC5(!FUNC0(ENA_FLAG_TRIGGER_RESET, adapter))) {
			adapter->reset_reason = ENA_REGS_RESET_ADMIN_TO;
			FUNC1(ENA_FLAG_TRIGGER_RESET, adapter);
		}
	}
}