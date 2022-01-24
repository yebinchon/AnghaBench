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
struct TYPE_2__ {int /*<<< orphan*/  interface_up; } ;
struct ena_adapter {int /*<<< orphan*/  timer_service; int /*<<< orphan*/  ifp; TYPE_1__ dev_stats; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ALERT ; 
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_LINK_UP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  SBT_1S ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ena_adapter*) ; 
 int FUNC11 (struct ena_adapter*) ; 
 int FUNC12 (struct ena_adapter*) ; 
 int FUNC13 (struct ena_adapter*) ; 
 int FUNC14 (struct ena_adapter*) ; 
 int /*<<< orphan*/  ena_timer_service ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ena_adapter*) ; 
 int FUNC17 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC18 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 

int
FUNC22(struct ena_adapter *adapter)
{
	int rc = 0;

	if (FUNC21(FUNC4(adapter->pdev) == 0)) {
		FUNC5(adapter->pdev, "device is not attached!\n");
		return (ENXIO);
	}

	if (!FUNC0(ENA_FLAG_DEV_UP, adapter)) {
		FUNC5(adapter->pdev, "device is going UP\n");

		/* setup interrupts for IO queues */
		rc = FUNC14(adapter);
		if (FUNC21(rc != 0)) {
			FUNC15(ENA_ALERT, "error setting up IO interrupt\n");
			goto error;
		}
		rc = FUNC11(adapter);
		if (FUNC21(rc != 0)) {
			FUNC15(ENA_ALERT, "err_req_irq\n");
			goto error;
		}

		/* allocate transmit descriptors */
		rc = FUNC13(adapter);
		if (FUNC21(rc != 0)) {
			FUNC15(ENA_ALERT, "err_setup_tx\n");
			goto err_setup_tx;
		}

		/* allocate receive descriptors */
		rc = FUNC12(adapter);
		if (FUNC21(rc != 0)) {
			FUNC15(ENA_ALERT, "err_setup_rx\n");
			goto err_setup_rx;
		}

		/* create IO queues for Rx & Tx */
		rc = FUNC6(adapter);
		if (FUNC21(rc != 0)) {
			FUNC15(ENA_ALERT,
			    "create IO queues failed\n");
			goto err_io_que;
		}

		if (FUNC0(ENA_FLAG_LINK_UP, adapter))
			FUNC19(adapter->ifp, LINK_STATE_UP);

		rc = FUNC17(adapter);
		if (FUNC21(rc != 0))
			goto err_up_complete;

		FUNC3(adapter->dev_stats.interface_up, 1);

		FUNC18(adapter);

		FUNC20(adapter->ifp, IFF_DRV_RUNNING,
		    IFF_DRV_OACTIVE);

		/* Activate timer service only if the device is running.
		 * If this flag is not set, it means that the driver is being
		 * reset and timer service will be activated afterwards.
		 */
		if (FUNC0(ENA_FLAG_DEVICE_RUNNING, adapter)) {
			FUNC2(&adapter->timer_service, SBT_1S,
			    SBT_1S, ena_timer_service, (void *)adapter, 0);
		}

		FUNC1(ENA_FLAG_DEV_UP, adapter);

		FUNC16(adapter);
	}

	return (0);

err_up_complete:
	FUNC7(adapter);
err_io_que:
	FUNC8(adapter);
err_setup_rx:
	FUNC9(adapter);
err_setup_tx:
	FUNC10(adapter);
error:
	return (rc);
}