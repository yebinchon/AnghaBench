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
struct ena_adapter {int /*<<< orphan*/  ioctl_sx; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(void *arg, int pending)
{
	struct ena_adapter *adapter = (struct ena_adapter *)arg;

	if (FUNC6(!FUNC0(ENA_FLAG_TRIGGER_RESET, adapter))) {
		FUNC1(adapter->pdev,
		    "device reset scheduled but trigger_reset is off\n");
		return;
	}

	FUNC5(&adapter->ioctl_sx);
	FUNC2(adapter, false);
	FUNC3(adapter);
	FUNC4(&adapter->ioctl_sx);
}