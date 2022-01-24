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
struct qlnxr_qp {scalar_t__ qp_type; int destroyed; int state; int /*<<< orphan*/  qp_id; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  sig; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int ECORE_ROCE_QP_STATE_ERR ; 
 int ECORE_ROCE_QP_STATE_INIT ; 
 int ECORE_ROCE_QP_STATE_RESET ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 scalar_t__ IB_QPT_GSI ; 
 int IB_QP_STATE ; 
 scalar_t__ FUNC0 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct qlnxr_qp* FUNC3 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlnxr_qp*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlnxr_dev*,struct qlnxr_qp*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlnxr_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_qp*,struct ib_qp_attr*,int,int /*<<< orphan*/ *) ; 

int
FUNC9(struct ib_qp *ibqp)
{
	struct qlnxr_qp *qp = FUNC3(ibqp);
	struct qlnxr_dev *dev = qp->dev;
	int rc = 0;
	struct ib_qp_attr attr;
	int attr_mask = 0;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC1(ha, "enter qp = %p, qp_type=%d\n", qp, qp->qp_type);

	qp->destroyed = 1;

	if (FUNC0(dev) && (qp->state != (ECORE_ROCE_QP_STATE_RESET |
				  ECORE_ROCE_QP_STATE_ERR |
				  ECORE_ROCE_QP_STATE_INIT))) {

		attr.qp_state = IB_QPS_ERR;
		attr_mask |= IB_QP_STATE;

		/* change the QP state to ERROR */
		FUNC8(ibqp, &attr, attr_mask, NULL);
	}

	if (qp->qp_type == IB_QPT_GSI)
		FUNC5(dev);

	qp->sig = ~qp->sig;

	FUNC6(dev, qp);

	if (FUNC2(&qp->refcnt)) {
		/* TODO: only for iWARP? */
		FUNC7(dev, qp->qp_id);
		FUNC4(qp);
	}

	FUNC1(ha, "exit\n");
	return rc;
}