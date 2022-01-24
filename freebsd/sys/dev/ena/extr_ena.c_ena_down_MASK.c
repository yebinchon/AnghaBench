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
struct TYPE_2__ {int /*<<< orphan*/  interface_down; } ;
struct ena_adapter {TYPE_1__ dev_stats; int /*<<< orphan*/  pdev; int /*<<< orphan*/  reset_reason; int /*<<< orphan*/  ena_dev; int /*<<< orphan*/  ifp; int /*<<< orphan*/  timer_service; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

void
FUNC14(struct ena_adapter *adapter)
{
	int rc;

	if (FUNC1(ENA_FLAG_DEV_UP, adapter)) {
		FUNC4(adapter->pdev, "device is going DOWN\n");

		FUNC2(&adapter->timer_service);

		FUNC0(ENA_FLAG_DEV_UP, adapter);
		FUNC12(adapter->ifp, IFF_DRV_OACTIVE,
		    IFF_DRV_RUNNING);

		FUNC11(adapter);

		if (FUNC1(ENA_FLAG_TRIGGER_RESET, adapter)) {
			rc = FUNC5(adapter->ena_dev,
			    adapter->reset_reason);
			if (FUNC13(rc != 0))
				FUNC4(adapter->pdev,
				    "Device reset failed\n");
		}

		FUNC6(adapter);

		FUNC9(adapter);
		FUNC7(adapter);
		FUNC10(adapter);
		FUNC8(adapter);

		FUNC3(adapter->dev_stats.interface_down, 1);
	}
}