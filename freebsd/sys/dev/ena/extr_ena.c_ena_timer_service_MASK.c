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
struct ena_admin_host_info {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  timer_service; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  reset_tq; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ifp; TYPE_2__* ena_dev; } ;
struct TYPE_3__ {struct ena_admin_host_info* host_info; } ;
struct TYPE_4__ {TYPE_1__ host_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  SBT_1S ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_admin_host_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *data)
{
	struct ena_adapter *adapter = (struct ena_adapter *)data;
	struct ena_admin_host_info *host_info =
	    adapter->ena_dev->host_attr.host_info;

	FUNC5(adapter);

	FUNC2(adapter);

	FUNC4(adapter);

	FUNC3(adapter);

	if (host_info != NULL)
		FUNC7(host_info, adapter->ifp);

	if (FUNC9(FUNC0(ENA_FLAG_TRIGGER_RESET, adapter))) {
		FUNC6(adapter->pdev, "Trigger reset is on\n");
		FUNC8(adapter->reset_tq, &adapter->reset_task);
		return;
	}

	/*
	 * Schedule another timeout one second from now.
	 */
	FUNC1(&adapter->timer_service, SBT_1S, SBT_1S, 0);
}