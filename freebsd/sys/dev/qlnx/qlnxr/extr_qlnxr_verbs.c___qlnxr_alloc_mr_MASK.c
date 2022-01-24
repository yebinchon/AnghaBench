#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qlnxr_pd {int /*<<< orphan*/  pd_id; } ;
struct TYPE_8__ {int itid; int key; int local_read; int mw_bind; int zbva; int phy_mr; int dma_mr; scalar_t__ vaddr; scalar_t__ length; scalar_t__ fbo; int /*<<< orphan*/  pbl_page_size_log; int /*<<< orphan*/  pbl_two_level; scalar_t__ pbl_ptr; scalar_t__ remote_atomic; scalar_t__ remote_write; scalar_t__ remote_read; scalar_t__ local_write; int /*<<< orphan*/  pd; int /*<<< orphan*/  tid_type; } ;
struct TYPE_6__ {int lkey; int rkey; } ;
struct TYPE_5__ {int /*<<< orphan*/  pbl_size; int /*<<< orphan*/  two_layered; } ;
struct TYPE_7__ {TYPE_1__ pbl_info; } ;
struct qlnxr_mr {TYPE_4__ hw_mr; TYPE_2__ ibmr; TYPE_3__ info; int /*<<< orphan*/  type; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_RDMA_TID_FMR ; 
 int ENOMEM ; 
 struct qlnxr_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QLNXR_MR_FRMR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 struct qlnxr_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 struct qlnxr_pd* FUNC7 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qlnxr_mr*) ; 
 struct qlnxr_mr* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct qlnxr_dev*,TYPE_3__*,int,int) ; 

__attribute__((used)) static struct qlnxr_mr *
FUNC12(struct ib_pd *ibpd, int max_page_list_len)
{
	struct qlnxr_pd *pd = FUNC7(ibpd);
	struct qlnxr_dev *dev = FUNC6((ibpd->device));
	struct qlnxr_mr *mr;
	int		rc = -ENOMEM;
	qlnx_host_t	*ha;

	ha = dev->ha;
 
	FUNC2(ha, "enter ibpd = %p pd = %p "
		" pd_id = %d max_page_list_len = %d\n",
		ibpd, pd, pd->pd_id, max_page_list_len);

	mr = FUNC10(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		FUNC1(ha, "kzalloc(mr) failed\n");
		return FUNC0(rc);
	}

	mr->dev = dev;
	mr->type = QLNXR_MR_FRMR;

	rc = FUNC11(dev, &mr->info, max_page_list_len,
				  1 /* allow dual layer pbl */);
	if (rc) {
		FUNC1(ha, "qlnxr_init_mr_info failed\n");
		goto err0;
	}

	rc = FUNC3(dev->rdma_ctx, &mr->hw_mr.itid);
	if (rc) {
		FUNC1(ha, "ecore_rdma_alloc_tid failed\n");
		goto err0;
	}

	/* index only, 18 bit long, lkey = itid << 8 | key */
	mr->hw_mr.tid_type = ECORE_RDMA_TID_FMR;
	mr->hw_mr.key = 0;
	mr->hw_mr.pd = pd->pd_id;
	mr->hw_mr.local_read = 1;
	mr->hw_mr.local_write = 0;
	mr->hw_mr.remote_read = 0;
	mr->hw_mr.remote_write = 0;
	mr->hw_mr.remote_atomic = 0;
	mr->hw_mr.mw_bind = false; /* TBD MW BIND */
	mr->hw_mr.pbl_ptr = 0; /* Will be supplied during post */
	mr->hw_mr.pbl_two_level = mr->info.pbl_info.two_layered;
	mr->hw_mr.pbl_page_size_log = FUNC8(mr->info.pbl_info.pbl_size);
	mr->hw_mr.fbo = 0;
	mr->hw_mr.length = 0;
	mr->hw_mr.vaddr = 0;
	mr->hw_mr.zbva = false; /* TBD figure when this should be true */
	mr->hw_mr.phy_mr = true; /* Fast MR - True, Regular Register False */
	mr->hw_mr.dma_mr = false;

	rc = FUNC5(dev->rdma_ctx, &mr->hw_mr);
	if (rc) {
		FUNC1(ha, "ecore_rdma_register_tid failed\n");
		goto err1;
	}

	mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
	mr->ibmr.rkey = mr->ibmr.lkey;

	FUNC2(ha, "exit mr = %p mr->ibmr.lkey = 0x%x\n",
		mr, mr->ibmr.lkey);

	return mr;

err1:
	FUNC4(dev->rdma_ctx, mr->hw_mr.itid);
err0:
	FUNC9(mr);

	FUNC2(ha, "exit\n");

	return FUNC0(rc);
}