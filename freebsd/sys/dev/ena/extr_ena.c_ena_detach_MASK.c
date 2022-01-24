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
struct ena_stats_dev {int dummy; } ;
struct ena_hw_stats {int dummy; } ;
struct ena_com_dev {struct ena_com_dev* bus; } ;
struct ena_adapter {TYPE_1__* ifp; int /*<<< orphan*/  ioctl_sx; int /*<<< orphan*/  global_mtx; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev_stats; int /*<<< orphan*/  hw_stats; int /*<<< orphan*/  reset_tq; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  timer_service; struct ena_com_dev* ena_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  counter_u64_t ;
struct TYPE_4__ {int /*<<< orphan*/ * if_vlantrunk; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_RSS_ACTIVE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ena_adapter* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct ena_adapter*) ; 
 int FUNC13 (struct ena_adapter*) ; 
 int FUNC14 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static int
FUNC28(device_t pdev)
{
	struct ena_adapter *adapter = FUNC3(pdev);
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	int rc;

	/* Make sure VLANS are not using driver */
	if (adapter->ifp->if_vlantrunk != NULL) {
		FUNC4(adapter->pdev ,"VLAN is in use, detach first\n");
		return (EBUSY);
	}

	FUNC15(adapter->ifp);

	/* Free reset task and callout */
	FUNC2(&adapter->timer_service);
	while (FUNC24(adapter->reset_tq, &adapter->reset_task, NULL))
		FUNC25(adapter->reset_tq, &adapter->reset_task);
	FUNC26(adapter->reset_tq);

	FUNC23(&adapter->ioctl_sx);
	FUNC8(adapter);
	FUNC7(adapter, true);
	FUNC22(&adapter->ioctl_sx);

#ifdef DEV_NETMAP
	netmap_detach(adapter->ifp);
#endif /* DEV_NETMAP */

	FUNC9(adapter);

	FUNC10((counter_u64_t *)&adapter->hw_stats,
	    sizeof(struct ena_hw_stats));
	FUNC10((counter_u64_t *)&adapter->dev_stats,
	    sizeof(struct ena_stats_dev));

	rc = FUNC13(adapter);
	if (FUNC27(rc != 0))
		FUNC4(adapter->pdev,
		    "Unmapped RX DMA tag associations\n");

	rc = FUNC14(adapter);
	if (FUNC27(rc != 0))
		FUNC4(adapter->pdev,
		    "Unmapped TX DMA tag associations\n");

	FUNC11(adapter);

	FUNC12(adapter);

	if (FUNC18(FUNC0(ENA_FLAG_RSS_ACTIVE, adapter)))
		FUNC6(ena_dev);

	FUNC5(ena_dev);

	FUNC19(&adapter->global_mtx);
	FUNC21(&adapter->ioctl_sx);

	FUNC17(adapter->ifp);

	if (ena_dev->bus != NULL)
		FUNC16(ena_dev->bus, M_DEVBUF);

	if (ena_dev != NULL)
		FUNC16(ena_dev, M_DEVBUF);

	return (FUNC1(pdev));
}