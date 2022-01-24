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
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  reset_reason; struct ena_com_dev* ena_dev; int /*<<< orphan*/  timer_service; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 int /*<<< orphan*/  ENA_FLAG_DEV_UP_BEFORE_RESET ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_NORMAL ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_com_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(struct ena_adapter *adapter, bool graceful)
{
	if_t ifp = adapter->ifp;
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	bool dev_up;

	if (!FUNC1(ENA_FLAG_DEVICE_RUNNING, adapter))
		return;

	FUNC13(ifp, LINK_STATE_DOWN);

	FUNC3(&adapter->timer_service);

	dev_up = FUNC1(ENA_FLAG_DEV_UP, adapter);
	if (dev_up)
		FUNC2(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter);
	else
		FUNC0(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter);

	if (!graceful)
		FUNC8(ena_dev, false);

	if (FUNC1(ENA_FLAG_DEV_UP, adapter))
		FUNC11(adapter);

	/*
	 * Stop the device from sending AENQ events (if the device was up, and
	 * the trigger reset was on, ena_down already performs device reset)
	 */
	if (!(FUNC1(ENA_FLAG_TRIGGER_RESET, adapter) && dev_up))
		FUNC6(adapter->ena_dev, adapter->reset_reason);

	FUNC12(adapter);

	FUNC10(adapter);

	FUNC4(ena_dev);

	FUNC9(ena_dev);

	FUNC5(ena_dev);

	FUNC7(ena_dev);

	adapter->reset_reason = ENA_REGS_RESET_NORMAL;

	FUNC0(ENA_FLAG_TRIGGER_RESET, adapter);
	FUNC0(ENA_FLAG_DEVICE_RUNNING, adapter);
}