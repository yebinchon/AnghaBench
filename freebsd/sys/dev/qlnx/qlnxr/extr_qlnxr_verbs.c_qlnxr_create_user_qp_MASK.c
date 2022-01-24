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
typedef  int /*<<< orphan*/  ureq ;
struct qlnxr_ucontext {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_pbes; } ;
struct TYPE_8__ {TYPE_3__* pbl_tbl; TYPE_2__ pbl_info; } ;
struct qlnxr_qp {int /*<<< orphan*/  ecore_qp; int /*<<< orphan*/  icid; int /*<<< orphan*/  qp_id; TYPE_4__ urq; int /*<<< orphan*/  srq; TYPE_4__ usq; } ;
struct qlnxr_pd {int dummy; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct qlnxr_create_qp_ureq {int /*<<< orphan*/  rq_pbl_ptr; int /*<<< orphan*/  rq_num_pages; int /*<<< orphan*/  sq_pbl_ptr; int /*<<< orphan*/  sq_num_pages; int /*<<< orphan*/  qp_handle_hi; int /*<<< orphan*/  qp_handle_lo; int /*<<< orphan*/  rq_len; int /*<<< orphan*/  rq_addr; int /*<<< orphan*/  sq_len; int /*<<< orphan*/  sq_addr; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct ecore_rdma_destroy_qp_out_params {int dummy; } ;
struct ecore_rdma_create_qp_out_params {int /*<<< orphan*/  icid; int /*<<< orphan*/  qp_id; } ;
struct ecore_rdma_create_qp_in_params {int /*<<< orphan*/  rq_pbl_ptr; int /*<<< orphan*/  rq_num_pages; int /*<<< orphan*/  sq_pbl_ptr; int /*<<< orphan*/  sq_num_pages; int /*<<< orphan*/  qp_handle_hi; int /*<<< orphan*/  qp_handle_lo; int /*<<< orphan*/  rq_len; int /*<<< orphan*/  rq_addr; int /*<<< orphan*/  sq_len; int /*<<< orphan*/  sq_addr; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
typedef  int /*<<< orphan*/  in_params ;
struct TYPE_7__ {int /*<<< orphan*/  pa; } ;
struct TYPE_5__ {struct ib_ucontext* context; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct qlnxr_dev*) ; 
 int FUNC1 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct qlnxr_create_qp_ureq*,struct ecore_rdma_create_qp_out_params*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_rdma_destroy_qp_out_params*) ; 
 struct qlnxr_pd* FUNC6 (struct ib_pd*) ; 
 struct qlnxr_ucontext* FUNC7 (struct ib_ucontext*) ; 
 int FUNC8 (struct qlnxr_create_qp_ureq*,struct ib_udata*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qlnxr_create_qp_ureq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qlnxr_dev*,struct qlnxr_qp*) ; 
 int FUNC11 (struct qlnxr_dev*,struct qlnxr_qp*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC12 (struct qlnxr_dev*,struct qlnxr_pd*,struct qlnxr_qp*,struct ib_qp_init_attr*,int,struct qlnxr_create_qp_ureq*) ; 
 int FUNC13 (struct ib_ucontext*,struct qlnxr_dev*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct qlnxr_dev*,struct qlnxr_qp*,struct ecore_rdma_create_qp_out_params*) ; 
 int /*<<< orphan*/  FUNC15 (struct qlnxr_dev*,struct qlnxr_qp*) ; 

__attribute__((used)) static int
FUNC16(struct qlnxr_dev *dev,
	struct qlnxr_qp *qp,
	struct ib_pd *ibpd,
	struct ib_udata *udata,
	struct ib_qp_init_attr *attrs)
{
	struct ecore_rdma_destroy_qp_out_params d_out_params;
	struct ecore_rdma_create_qp_in_params in_params;
	struct ecore_rdma_create_qp_out_params out_params;
	struct qlnxr_pd *pd = FUNC6(ibpd);
	struct ib_ucontext *ib_ctx = NULL;
	struct qlnxr_ucontext *ctx = NULL;
	struct qlnxr_create_qp_ureq ureq;
	int alloc_and_init = FUNC1(dev);
	int rc = -EINVAL;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC3(ha, "enter\n");

	ib_ctx = ibpd->uobject->context;
	ctx = FUNC7(ib_ctx);

	FUNC9(&ureq, 0, sizeof(ureq));
	rc = FUNC8(&ureq, udata, sizeof(ureq));

	if (rc) {
		FUNC2(ha, "ib_copy_from_udata failed [%d]\n", rc);
		return rc;
	}

	/* SQ - read access only (0), dma sync not required (0) */
	rc = FUNC13(ib_ctx, dev, &qp->usq, ureq.sq_addr,
				  ureq.sq_len, 0, 0,
				  alloc_and_init);
	if (rc) {
		FUNC2(ha, "qlnxr_init_user_queue failed [%d]\n", rc);
		return rc;
	}

	if (!qp->srq) {
		/* RQ - read access only (0), dma sync not required (0) */
		rc = FUNC13(ib_ctx, dev, &qp->urq, ureq.rq_addr,
					  ureq.rq_len, 0, 0,
					  alloc_and_init);

		if (rc) {
			FUNC2(ha, "qlnxr_init_user_queue failed [%d]\n", rc);
			return rc;
		}
	}

	FUNC9(&in_params, 0, sizeof(in_params));
	FUNC12(dev, pd, qp, attrs, false, &in_params);
	in_params.qp_handle_lo = ureq.qp_handle_lo;
	in_params.qp_handle_hi = ureq.qp_handle_hi;
	in_params.sq_num_pages = qp->usq.pbl_info.num_pbes;
	in_params.sq_pbl_ptr = qp->usq.pbl_tbl->pa;

	if (!qp->srq) {
		in_params.rq_num_pages = qp->urq.pbl_info.num_pbes;
		in_params.rq_pbl_ptr = qp->urq.pbl_tbl->pa;
	}

	qp->ecore_qp = FUNC4(dev->rdma_ctx, &in_params, &out_params);

	if (!qp->ecore_qp) {
		rc = -ENOMEM;
		FUNC2(ha, "ecore_rdma_create_qp failed\n");
		goto err1;
	}

	if (FUNC0(dev))
		FUNC14(dev, qp, &out_params);

	qp->qp_id = out_params.qp_id;
	qp->icid = out_params.icid;

	rc = FUNC11(dev, qp, udata);

	if (rc) {
		FUNC2(ha, "qlnxr_copy_qp_uresp failed\n");
		goto err;
	}

	FUNC15(dev, qp);

	FUNC3(ha, "exit\n");
	return 0;
err:
	rc = FUNC5(dev->rdma_ctx, qp->ecore_qp, &d_out_params);

	if (rc)
		FUNC3(ha, "fatal fault\n");

err1:
	FUNC10(dev, qp);

	FUNC3(ha, "exit[%d]\n", rc);
	return rc;
}