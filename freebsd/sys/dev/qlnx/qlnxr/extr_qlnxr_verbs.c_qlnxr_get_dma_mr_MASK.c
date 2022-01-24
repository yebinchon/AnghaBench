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
struct qlnxr_pd {int /*<<< orphan*/  pd_id; } ;
struct TYPE_2__ {int itid; int local_read; int local_write; int remote_read; int remote_write; int remote_atomic; int dma_mr; int key; int /*<<< orphan*/  pd; int /*<<< orphan*/  tid_type; } ;
struct ib_mr {int lkey; int rkey; } ;
struct qlnxr_mr {TYPE_1__ hw_mr; struct ib_mr ibmr; int /*<<< orphan*/  type; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_RDMA_TID_REGISTERED_MR ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_MW_BIND ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int /*<<< orphan*/  QLNXR_MR_DMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct qlnxr_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct qlnxr_pd* FUNC6 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlnxr_mr*) ; 
 struct qlnxr_mr* FUNC8 (int,int /*<<< orphan*/ ) ; 

struct ib_mr *
FUNC9(struct ib_pd *ibpd, int acc)
{
	struct qlnxr_mr		*mr;
	struct qlnxr_dev	*dev = FUNC5((ibpd->device));
	struct qlnxr_pd		*pd = FUNC6(ibpd);
	int			rc;
	qlnx_host_t		*ha;

	ha = dev->ha;

	FUNC1(ha, "enter\n");

	if (acc & IB_ACCESS_MW_BIND) {
		FUNC1(ha, "Unsupported access flags received for dma mr\n");
	}

	mr = FUNC8(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		rc = -ENOMEM;
		FUNC1(ha, "kzalloc(mr) failed %d\n", rc);
		goto err0;
	}

	mr->type = QLNXR_MR_DMA;

	rc = FUNC2(dev->rdma_ctx, &mr->hw_mr.itid);
	if (rc) {
		FUNC1(ha, "ecore_rdma_alloc_tid failed %d\n", rc);
		goto err1;
	}

	/* index only, 18 bit long, lkey = itid << 8 | key */
	mr->hw_mr.tid_type = ECORE_RDMA_TID_REGISTERED_MR;
	mr->hw_mr.pd = pd->pd_id;
	mr->hw_mr.local_read = 1;
	mr->hw_mr.local_write = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
	mr->hw_mr.remote_read = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
	mr->hw_mr.remote_write = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
	mr->hw_mr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
	mr->hw_mr.dma_mr = true;

	rc = FUNC4(dev->rdma_ctx, &mr->hw_mr);
	if (rc) {
		FUNC1(ha, "ecore_rdma_register_tid failed %d\n", rc);
		goto err2;
	}

	mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;

	if (mr->hw_mr.remote_write || mr->hw_mr.remote_read ||
		mr->hw_mr.remote_atomic) {
		mr->ibmr.rkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
	}

	FUNC1(ha, "lkey = %x\n", mr->ibmr.lkey);

	return &mr->ibmr;

err2:
	FUNC3(dev->rdma_ctx, mr->hw_mr.itid);
err1:
	FUNC7(mr);
err0:
	FUNC1(ha, "exit [%d]\n", rc);

	return FUNC0(rc);
}