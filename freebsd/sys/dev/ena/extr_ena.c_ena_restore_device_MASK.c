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
struct ena_com_dev_get_features_ctx {int dummy; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int wd_active; int /*<<< orphan*/  timer_service; int /*<<< orphan*/  keep_alive_timestamp; int /*<<< orphan*/  num_queues; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ifp; struct ena_com_dev* ena_dev; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  ENA_FLAG_DEV_UP_BEFORE_RESET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_LINK_UP ; 
 int /*<<< orphan*/  ENA_FLAG_ONGOING_RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_REGS_RESET_DRIVER_INVALID_STATE ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  SBT_1S ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_com_dev*) ; 
 int FUNC10 (struct ena_adapter*,int /*<<< orphan*/ ,struct ena_com_dev_get_features_ctx*,int*) ; 
 int FUNC11 (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct ena_adapter*) ; 
 int FUNC13 (struct ena_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ena_adapter*) ; 
 int FUNC15 (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ; 
 int /*<<< orphan*/  ena_timer_service ; 
 int FUNC16 (struct ena_adapter*) ; 
 int /*<<< orphan*/  ena_version ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC19(struct ena_adapter *adapter)
{
	struct ena_com_dev_get_features_ctx get_feat_ctx;
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	if_t ifp = adapter->ifp;
	device_t dev = adapter->pdev;
	int wd_active;
	int rc;

	FUNC2(ENA_FLAG_ONGOING_RESET, adapter);

	rc = FUNC10(adapter, dev, &get_feat_ctx, &wd_active);
	if (rc != 0) {
		FUNC4(dev, "Cannot initialize device\n");
		goto err;
	}
	/*
	 * Only enable WD if it was enabled before reset, so it won't override
	 * value set by the user by the sysctl.
	 */
	if (adapter->wd_active != 0)
		adapter->wd_active = wd_active;

	rc = FUNC11(adapter, &get_feat_ctx);
	if (rc != 0) {
		FUNC4(dev, "Validation of device parameters failed\n");
		goto err_device_destroy;
	}

	rc = FUNC15(adapter, &get_feat_ctx);
	if (rc != 0)
		goto err_device_destroy;

	FUNC0(ENA_FLAG_ONGOING_RESET, adapter);
	/* Make sure we don't have a race with AENQ Links state handler */
	if (FUNC1(ENA_FLAG_LINK_UP, adapter))
		FUNC18(ifp, LINK_STATE_UP);

	rc = FUNC13(adapter,
	    adapter->num_queues);
	if (rc != 0) {
		FUNC4(dev, "Enable MSI-X failed\n");
		goto err_device_destroy;
	}

	/* If the interface was up before the reset bring it up */
	if (FUNC1(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter)) {
		rc = FUNC16(adapter);
		if (rc != 0) {
			FUNC4(dev, "Failed to create I/O queues\n");
			goto err_disable_msix;
		}
	}

	/* Indicate that device is running again and ready to work */
	FUNC2(ENA_FLAG_DEVICE_RUNNING, adapter);

	if (FUNC1(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter)) {
		/*
		 * As the AENQ handlers weren't executed during reset because
		 * the flag ENA_FLAG_DEVICE_RUNNING was turned off, the
		 * timestamp must be updated again That will prevent next reset
		 * caused by missing keep alive.
		 */
		adapter->keep_alive_timestamp = FUNC17();
		FUNC3(&adapter->timer_service, SBT_1S, SBT_1S,
		    ena_timer_service, (void *)adapter, 0);
	}

	FUNC4(dev,
	    "Device reset completed successfully, Driver info: %s\n", ena_version);

	return (rc);

err_disable_msix:
	FUNC14(adapter);
	FUNC12(adapter);
err_device_destroy:
	FUNC5(ena_dev);
	FUNC9(ena_dev);
	FUNC6(ena_dev);
	FUNC7(ena_dev, ENA_REGS_RESET_DRIVER_INVALID_STATE);
	FUNC8(ena_dev);
err:
	FUNC0(ENA_FLAG_DEVICE_RUNNING, adapter);
	FUNC0(ENA_FLAG_ONGOING_RESET, adapter);
	FUNC4(dev, "Reset attempt failed. Can not reset the device\n");

	return (rc);
}