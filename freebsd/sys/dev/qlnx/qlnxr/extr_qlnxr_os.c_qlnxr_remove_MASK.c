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
struct qlnxr_dev {int /*<<< orphan*/  ibdev; int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/  dpi; scalar_t__ pd_count; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  QLNXR_PORT ; 
 scalar_t__ FUNC0 (struct qlnxr_dev*) ; 
 scalar_t__ FUNC1 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,void*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct qlnxr_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlnxr_dev*) ; 

__attribute__((used)) static int
FUNC11(void *eth_dev, void *qlnx_rdma_dev)
{
	struct qlnxr_dev *dev;
	qlnx_host_t *ha;

	dev = qlnx_rdma_dev;
	ha = eth_dev;

	if ((ha == NULL) || (dev == NULL))
		return (0);

	FUNC2(ha, "enter ha = %p qlnx_rdma_dev = %p pd_count = %d\n",
		ha, qlnx_rdma_dev, dev->pd_count);

	FUNC8(dev, QLNXR_PORT,
		IB_EVENT_PORT_ERR);

	if (FUNC0(dev)) {
		if (dev->pd_count)
			return (EBUSY);
	}

	FUNC6(&dev->ibdev);
	
	if (FUNC1(dev)) {
		if (dev->pd_count)
			return (EBUSY);
	}

	FUNC3(dev->rdma_ctx, dev->dpi);
	FUNC4(dev->rdma_ctx);

	FUNC9(dev);

	FUNC7(dev);

	FUNC10(dev);
	FUNC5(&dev->ibdev);

	FUNC2(ha, "exit ha = %p qlnx_rdma_dev = %p\n", ha, qlnx_rdma_dev);
	return (0);
}