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
struct ib_qp {int /*<<< orphan*/  qp_num; } ;
struct qlnxr_qp {struct ib_qp ibqp; int /*<<< orphan*/  qp_id; } ;
struct qlnxr_pd {int dummy; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_init_attr {scalar_t__ qp_type; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; int /*<<< orphan*/  event_handler; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_2__ {int /*<<< orphan*/  icid; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct ib_qp* FUNC0 (int) ; 
 scalar_t__ IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct qlnxr_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct qlnxr_pd* FUNC5 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlnxr_qp*) ; 
 struct qlnxr_qp* FUNC7 (int) ; 
 int FUNC8 (struct ib_pd*,struct qlnxr_dev*,struct ib_qp_init_attr*,struct ib_udata*) ; 
 struct ib_qp* FUNC9 (struct qlnxr_dev*,struct ib_qp_init_attr*,struct qlnxr_qp*) ; 
 int FUNC10 (struct qlnxr_dev*,struct qlnxr_qp*,struct ib_pd*,struct ib_qp_init_attr*) ; 
 int FUNC11 (struct qlnxr_dev*,struct qlnxr_qp*,struct ib_pd*,struct ib_udata*,struct ib_qp_init_attr*) ; 
 int FUNC12 (struct qlnxr_dev*,struct qlnxr_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_pd*,struct ib_qp_init_attr*) ; 

struct ib_qp *
FUNC14(struct ib_pd *ibpd,
		struct ib_qp_init_attr *attrs,
		struct ib_udata *udata)
{
	struct qlnxr_dev *dev = FUNC4(ibpd->device);
	struct qlnxr_pd *pd = FUNC5(ibpd);
	struct qlnxr_qp *qp;
	int rc = 0;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC2(ha, "enter\n");

	rc = FUNC8(ibpd, dev, attrs, udata);
	if (rc) {
		FUNC1(ha, "qlnxr_check_qp_attrs failed [%d]\n", rc);
		return FUNC0(rc);
	}

	FUNC2(ha, "called from %s, event_handle=%p,"
		" eepd=%p sq_cq=%p, sq_icid=%d, rq_cq=%p, rq_icid=%d\n",
		(udata ? "user library" : "kernel"),
		attrs->event_handler, pd,
		FUNC3(attrs->send_cq),
		FUNC3(attrs->send_cq)->icid,
		FUNC3(attrs->recv_cq),
		FUNC3(attrs->recv_cq)->icid);

	qp = FUNC7(sizeof(struct qlnxr_qp));

	if (!qp) {
		FUNC1(ha, "kzalloc(qp) failed\n");
		return FUNC0(-ENOMEM);
	}

	FUNC13(dev, qp, pd, attrs);

	if (attrs->qp_type == IB_QPT_GSI) {
		FUNC1(ha, "calling qlnxr_create_gsi_qp\n");
		return FUNC9(dev, attrs, qp);
	}

	if (udata) {
		rc = FUNC11(dev, qp, ibpd, udata, attrs);

		if (rc) {
			FUNC1(ha, "qlnxr_create_user_qp failed\n");
			goto err;
		}
	} else {
		rc = FUNC10(dev, qp, ibpd, attrs);

		if (rc) {
			FUNC1(ha, "qlnxr_create_kernel_qp failed\n");
			goto err;
		}
	}

	qp->ibqp.qp_num = qp->qp_id;

	rc = FUNC12(dev, qp, qp->qp_id);

	if (rc) {
		FUNC1(ha, "qlnxr_idr_add failed\n");
		goto err;
	}

	FUNC2(ha, "exit [%p]\n", &qp->ibqp);

	return &qp->ibqp;
err:
	FUNC6(qp);

	FUNC2(ha, "failed exit\n");
	return FUNC0(-EFAULT);
}