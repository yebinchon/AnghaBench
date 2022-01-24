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
typedef  int uint32_t ;
struct ena_llq_configurations {int dummy; } ;
struct ena_com_dev {int supported_features; scalar_t__ tx_mem_queue_type; int /*<<< orphan*/  mem_bar; } ;
struct ena_admin_feature_llq_desc {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/ * memory; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENA_ADMIN_LLQ ; 
 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ; 
 int /*<<< orphan*/  ENA_MEM_BAR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct ena_adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ena_com_dev*,struct ena_admin_feature_llq_desc*,struct ena_llq_configurations*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(device_t pdev, struct ena_com_dev *ena_dev,
    struct ena_admin_feature_llq_desc *llq,
    struct ena_llq_configurations *llq_default_configurations)
{
	struct ena_adapter *adapter = FUNC2(pdev);
	int rc, rid;
	uint32_t llq_feature_mask;

	llq_feature_mask = 1 << ENA_ADMIN_LLQ;
	if (!(ena_dev->supported_features & llq_feature_mask)) {
		FUNC3(pdev,
		    "LLQ is not supported. Fallback to host mode policy.\n");
		ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
		return (0);
	}

	rc = FUNC4(ena_dev, llq, llq_default_configurations);
	if (FUNC7(rc != 0)) {
		FUNC3(pdev, "Failed to configure the device mode. "
		    "Fallback to host mode policy.\n");
		ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
		return (0);
	}

	/* Nothing to config, exit */
	if (ena_dev->tx_mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST)
		return (0);

	/* Try to allocate resources for LLQ bar */
	rid = FUNC0(ENA_MEM_BAR);
	adapter->memory = FUNC1(pdev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (FUNC7(adapter->memory == NULL)) {
		FUNC3(pdev, "unable to allocate LLQ bar resource. "
		    "Fallback to host mode policy.\n");
		ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
		return (0);
	}

	/* Enable write combining for better LLQ performance */
	rc = FUNC5(adapter->memory);
	if (FUNC7(rc != 0)) {
		FUNC3(pdev, "failed to enable write combining.\n");
		return (rc);
	}

	/*
	 * Save virtual address of the device's memory region
	 * for the ena_com layer.
	 */
	ena_dev->mem_bar = FUNC6(adapter->memory);

	return (0);
}