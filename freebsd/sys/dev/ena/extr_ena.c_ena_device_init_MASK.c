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
typedef  int uint32_t ;
struct TYPE_2__ {int supported_groups; } ;
struct ena_com_dev_get_features_ctx {TYPE_1__ aenq; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int dma_width; struct ena_com_dev* ena_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENA_ADMIN_FATAL_ERROR ; 
 int /*<<< orphan*/  ENA_ADMIN_KEEP_ALIVE ; 
 int /*<<< orphan*/  ENA_ADMIN_LINK_CHANGE ; 
 int /*<<< orphan*/  ENA_ADMIN_NOTIFICATION ; 
 int /*<<< orphan*/  ENA_ADMIN_WARNING ; 
 int ENA_MMIO_DISABLE_REG_READ ; 
 int /*<<< orphan*/  ENA_REGS_RESET_NORMAL ; 
 int /*<<< orphan*/  aenq_handlers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*) ; 
 int FUNC3 (struct ena_com_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*) ; 
 int FUNC5 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ena_com_dev*,struct ena_com_dev_get_features_ctx*) ; 
 int FUNC7 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_com_dev*) ; 
 int FUNC9 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct ena_com_dev*,int) ; 
 int FUNC11 (struct ena_com_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ena_com_dev*,int) ; 
 int FUNC13 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int
FUNC17(struct ena_adapter *adapter, device_t pdev,
    struct ena_com_dev_get_features_ctx *get_feat_ctx, int *wd_active)
{
	struct ena_com_dev* ena_dev = adapter->ena_dev;
	bool readless_supported;
	uint32_t aenq_groups;
	int dma_width;
	int rc;

	rc = FUNC9(ena_dev);
	if (FUNC16(rc != 0)) {
		FUNC1(pdev, "failed to init mmio read less\n");
		return (rc);
	}

	/*
	 * The PCIe configuration space revision id indicate if mmio reg
	 * read is disabled
	 */
	readless_supported = !(FUNC15(pdev) & ENA_MMIO_DISABLE_REG_READ);
	FUNC12(ena_dev, readless_supported);

	rc = FUNC5(ena_dev, ENA_REGS_RESET_NORMAL);
	if (FUNC16(rc != 0)) {
		FUNC1(pdev, "Can not reset device\n");
		goto err_mmio_read_less;
	}

	rc = FUNC13(ena_dev);
	if (FUNC16(rc != 0)) {
		FUNC1(pdev, "device version is too low\n");
		goto err_mmio_read_less;
	}

	dma_width = FUNC7(ena_dev);
	if (FUNC16(dma_width < 0)) {
		FUNC1(pdev, "Invalid dma width value %d", dma_width);
		rc = dma_width;
		goto err_mmio_read_less;
	}
	adapter->dma_width = dma_width;

	/* ENA admin level init */
	rc = FUNC3(ena_dev, &aenq_handlers);
	if (FUNC16(rc != 0)) {
		FUNC1(pdev,
		    "Can not initialize ena admin queue with device\n");
		goto err_mmio_read_less;
	}

	/*
	 * To enable the msix interrupts the driver needs to know the number
	 * of queues. So the driver uses polling mode to retrieve this
	 * information
	 */
	FUNC10(ena_dev, true);

	FUNC14(ena_dev, pdev);

	/* Get Device Attributes */
	rc = FUNC6(ena_dev, get_feat_ctx);
	if (FUNC16(rc != 0)) {
		FUNC1(pdev,
		    "Cannot get attribute for ena device rc: %d\n", rc);
		goto err_admin_init;
	}

	aenq_groups = FUNC0(ENA_ADMIN_LINK_CHANGE) |
	    FUNC0(ENA_ADMIN_FATAL_ERROR) |
	    FUNC0(ENA_ADMIN_WARNING) |
	    FUNC0(ENA_ADMIN_NOTIFICATION) |
	    FUNC0(ENA_ADMIN_KEEP_ALIVE);

	aenq_groups &= get_feat_ctx->aenq.supported_groups;
	rc = FUNC11(ena_dev, aenq_groups);
	if (FUNC16(rc != 0)) {
		FUNC1(pdev, "Cannot configure aenq groups rc: %d\n", rc);
		goto err_admin_init;
	}

	*wd_active = !!(aenq_groups & FUNC0(ENA_ADMIN_KEEP_ALIVE));

	return (0);

err_admin_init:
	FUNC4(ena_dev);
	FUNC2(ena_dev);
err_mmio_read_less:
	FUNC8(ena_dev);

	return (rc);
}