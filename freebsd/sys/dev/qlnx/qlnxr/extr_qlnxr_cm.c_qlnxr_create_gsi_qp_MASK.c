#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ib_qp {int qp_num; } ;
struct TYPE_9__ {int max_wr; } ;
struct TYPE_8__ {int max_wr; } ;
struct qlnxr_qp {void* rqe_wr_id; struct ib_qp ibqp; void* wqe_wr_id; TYPE_3__ sq; TYPE_2__ rq; } ;
struct qlnxr_dev {TYPE_5__* ha; TYPE_4__* gsi_rqcq; int /*<<< orphan*/  gsi_ll2_mac_address; } ;
struct TYPE_7__ {int max_recv_wr; int max_send_wr; } ;
struct ib_qp_init_attr {TYPE_1__ cap; } ;
struct TYPE_11__ {int /*<<< orphan*/  primary_mac; } ;
struct TYPE_10__ {void* cq_type; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_qp* FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* QLNXR_CQ_TYPE_GSI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qlnxr_dev*,struct ib_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlnxr_dev*,struct ib_qp_init_attr*) ; 
 int FUNC8 (struct qlnxr_dev*,struct ib_qp_init_attr*,struct qlnxr_qp*) ; 
 int FUNC9 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlnxr_dev*,struct qlnxr_qp*,struct ib_qp_init_attr*) ; 

struct ib_qp*
FUNC11(struct qlnxr_dev *dev,
		 struct ib_qp_init_attr *attrs,
		 struct qlnxr_qp *qp)
{
	int rc;

	FUNC2(dev->ha, "enter\n");

	rc = FUNC6(dev, attrs);

	if (rc) {
		FUNC1(dev->ha, "qlnxr_check_gsi_qp_attrs failed\n");
		return FUNC0(rc);
	}

	rc = FUNC8(dev, attrs, qp);
	if (rc) {
		FUNC1(dev->ha, "qlnxr_ll2_start failed\n");
		return FUNC0(rc);
	}

	/* create QP */
	qp->ibqp.qp_num = 1;
	qp->rq.max_wr = attrs->cap.max_recv_wr;
	qp->sq.max_wr = attrs->cap.max_send_wr;

	qp->rqe_wr_id = FUNC4(qp->rq.max_wr * sizeof(*qp->rqe_wr_id),
				GFP_KERNEL);
	if (!qp->rqe_wr_id) {
		FUNC1(dev->ha, "(!qp->rqe_wr_id)\n");
		goto err;
	}

	qp->wqe_wr_id = FUNC4(qp->sq.max_wr * sizeof(*qp->wqe_wr_id),
				GFP_KERNEL);
	if (!qp->wqe_wr_id) {
		FUNC1(dev->ha, "(!qp->wqe_wr_id)\n");
		goto err;
	}

	FUNC10(dev, qp, attrs);
	FUNC5(dev->gsi_ll2_mac_address, dev->ha->primary_mac, ETH_ALEN);

	/* the GSI CQ is handled by the driver so remove it from the FW */
	FUNC7(dev, attrs);
	dev->gsi_rqcq->cq_type = QLNXR_CQ_TYPE_GSI;
	dev->gsi_rqcq->cq_type = QLNXR_CQ_TYPE_GSI;

	FUNC2(dev->ha, "exit &qp->ibqp = %p\n", &qp->ibqp);

	return &qp->ibqp;
err:
	FUNC3(qp->rqe_wr_id);

	rc = FUNC9(dev);

	FUNC2(dev->ha, "exit with error\n");

	return FUNC0(-ENOMEM);
}