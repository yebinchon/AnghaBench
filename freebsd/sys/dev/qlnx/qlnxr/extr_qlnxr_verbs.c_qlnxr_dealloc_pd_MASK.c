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
struct qlnxr_pd {int /*<<< orphan*/  pd_id; } ;
struct qlnxr_dev {int /*<<< orphan*/  pd_count; int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qlnxr_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct qlnxr_pd* FUNC5 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlnxr_pd*) ; 

int
FUNC7(struct ib_pd *ibpd)
{
	struct qlnxr_pd		*pd;
	struct qlnxr_dev	*dev;
	qlnx_host_t		*ha;

	pd = FUNC5(ibpd);
	dev = FUNC4((ibpd->device));
	ha = dev->ha;

	FUNC1(ha, "enter\n");

	if (pd == NULL) {
		FUNC0(ha, "pd = NULL\n");
	} else {
		FUNC3(dev->rdma_ctx, pd->pd_id);
		FUNC6(pd);
		FUNC2(&dev->pd_count, 1);
		FUNC1(ha, "exit [pd, pd_id, pd_count] = [%p, 0x%x, %d]\n",
			pd, pd->pd_id, dev->pd_count);
	}

	FUNC1(ha, "exit\n");
	return 0;
}