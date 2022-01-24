#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  u64 ;
struct qlnxr_pd {int /*<<< orphan*/  pd_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  pbl_size; int /*<<< orphan*/  two_layered; } ;
struct TYPE_9__ {TYPE_1__* pbl_table; TYPE_2__ pbl_info; } ;
struct TYPE_10__ {int itid; int key; int local_read; int local_write; int remote_read; int remote_write; int remote_atomic; int mw_bind; int zbva; int phy_mr; int dma_mr; void* vaddr; void* length; scalar_t__ fbo; void* page_size_log; void* pbl_page_size_log; int /*<<< orphan*/  pbl_two_level; int /*<<< orphan*/  pbl_ptr; int /*<<< orphan*/  pd; int /*<<< orphan*/  tid_type; } ;
struct ib_mr {int lkey; int rkey; } ;
struct qlnxr_mr {TYPE_3__ info; TYPE_6__ hw_mr; struct ib_mr ibmr; int /*<<< orphan*/ * iova_start; int /*<<< orphan*/  type; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct ib_phys_buf {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_7__ {int /*<<< orphan*/  pa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_RDMA_TID_REGISTERED_MR ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  QLNXR_MR_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 struct qlnxr_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 struct qlnxr_pd* FUNC7 (struct ib_pd*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qlnxr_mr*) ; 
 struct qlnxr_mr* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct qlnxr_dev*,TYPE_2__*,TYPE_1__*) ; 
 size_t FUNC12 (int /*<<< orphan*/ *,struct ib_phys_buf*,int) ; 
 int FUNC13 (struct qlnxr_dev*,TYPE_3__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC14 (struct qlnxr_dev*,struct ib_phys_buf*,int,TYPE_1__*,TYPE_2__*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct ib_phys_buf*,int,void**) ; 

struct ib_mr *
FUNC16(struct ib_pd *ibpd,
	struct ib_phys_buf *buf_list,
	int buf_cnt, int acc, u64 *iova_start)
{
	int		rc = -ENOMEM;
	struct qlnxr_dev *dev = FUNC6((ibpd->device));
	struct qlnxr_mr *mr;
	struct qlnxr_pd *pd;
	qlnx_host_t	*ha;
	size_t		num_pages = 0;
	uint64_t	length;

	ha = dev->ha;

	FUNC2(ha, "enter\n");

	pd = FUNC7(ibpd);

	FUNC2(ha, "pd = %d buf_list = %p, buf_cnt = %d,"
		" iova_start = %p, acc = %d\n",
		pd->pd_id, buf_list, buf_cnt, iova_start, acc);

	//if (acc & IB_ACCESS_REMOTE_WRITE && !(acc & IB_ACCESS_LOCAL_WRITE)) {
	//	QL_DPRINT11(ha, "(acc & IB_ACCESS_REMOTE_WRITE &&"
	//		" !(acc & IB_ACCESS_LOCAL_WRITE))\n");
	//	return ERR_PTR(-EINVAL);
	//}

	mr = FUNC10(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		FUNC1(ha, "kzalloc(mr) failed\n");
		return FUNC0(rc);
	}

	mr->type = QLNXR_MR_KERNEL;
	mr->iova_start = iova_start;

	rc = FUNC15(ha, buf_list, buf_cnt, &length);
	if (rc)
		goto err0;

	num_pages = FUNC12(ha, buf_list, buf_cnt);
	if (!num_pages)
		goto err0;

	rc = FUNC13(dev, &mr->info, num_pages, 1);
	if (rc) {
		FUNC1(ha,
			"qlnxr_init_mr_info failed [%d]\n", rc);
		goto err1;
	}

	FUNC14(dev, buf_list, buf_cnt, mr->info.pbl_table,
		   &mr->info.pbl_info);

	rc = FUNC3(dev->rdma_ctx, &mr->hw_mr.itid);

	if (rc) {
		FUNC1(ha, "roce alloc tid returned an error %d\n", rc);
		goto err1;
	}

	/* index only, 18 bit long, lkey = itid << 8 | key */
	mr->hw_mr.tid_type = ECORE_RDMA_TID_REGISTERED_MR;
	mr->hw_mr.key = 0;
	mr->hw_mr.pd = pd->pd_id;
	mr->hw_mr.local_read = 1;
	mr->hw_mr.local_write = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
	mr->hw_mr.remote_read = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
	mr->hw_mr.remote_write = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
	mr->hw_mr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
	mr->hw_mr.mw_bind = false; /* TBD MW BIND */
	mr->hw_mr.pbl_ptr = mr->info.pbl_table[0].pa;
	mr->hw_mr.pbl_two_level = mr->info.pbl_info.two_layered;
	mr->hw_mr.pbl_page_size_log = FUNC8(mr->info.pbl_info.pbl_size);
	mr->hw_mr.page_size_log = FUNC8(PAGE_SIZE); /* for the MR pages */

	mr->hw_mr.fbo = 0;

	mr->hw_mr.length = length;
	mr->hw_mr.vaddr = (uint64_t)iova_start;
	mr->hw_mr.zbva = false; /* TBD figure when this should be true */
	mr->hw_mr.phy_mr = false; /* Fast MR - True, Regular Register False */
	mr->hw_mr.dma_mr = false;

	rc = FUNC5(dev->rdma_ctx, &mr->hw_mr);
	if (rc) {
		FUNC1(ha, "roce register tid returned an error %d\n", rc);
		goto err2;
	}

	mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
	if (mr->hw_mr.remote_write || mr->hw_mr.remote_read ||
		mr->hw_mr.remote_atomic)
		mr->ibmr.rkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;

	FUNC2(ha, "lkey: %x\n", mr->ibmr.lkey);

	return (&mr->ibmr);

err2:
	FUNC4(dev->rdma_ctx, mr->hw_mr.itid);
err1:
	FUNC11(dev, &mr->info.pbl_info, mr->info.pbl_table);
err0:
	FUNC9(mr);

	FUNC2(ha, "exit [%d]\n", rc);
	return (FUNC0(rc));
}