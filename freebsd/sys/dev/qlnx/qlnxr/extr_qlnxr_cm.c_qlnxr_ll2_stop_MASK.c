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
struct qlnxr_dev {int gsi_ll2_handle; int /*<<< orphan*/  ha; int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/  gsi_ll2_mac_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC4(struct qlnxr_dev *dev)
{
	int rc;

	FUNC0(dev->ha, "enter\n");

	if (dev->gsi_ll2_handle == 0xFF)
		return 0;

	/* remove LL2 MAC address filter */
	rc = FUNC3(dev->rdma_ctx,
			  dev->gsi_ll2_mac_address, NULL);

	rc = FUNC2(dev->rdma_ctx,
			dev->gsi_ll2_handle);

	FUNC1(dev->rdma_ctx, dev->gsi_ll2_handle);

	dev->gsi_ll2_handle = 0xFF;

	FUNC0(dev->ha, "exit rc = %d\n", rc);
	return rc;
}