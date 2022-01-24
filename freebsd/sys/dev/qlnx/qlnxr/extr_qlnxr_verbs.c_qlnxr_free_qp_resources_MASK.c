#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* uobject; } ;
struct qlnxr_qp {scalar_t__ qp_type; int /*<<< orphan*/  ecore_qp; TYPE_2__ ibqp; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct ecore_rdma_destroy_qp_out_params {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_3__ {scalar_t__ context; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_rdma_destroy_qp_out_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlnxr_dev*,struct qlnxr_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlnxr_dev*,struct qlnxr_qp*) ; 

int
FUNC4(struct qlnxr_dev *dev,
	struct qlnxr_qp *qp)
{
	int		rc = 0;
	qlnx_host_t	*ha;
	struct ecore_rdma_destroy_qp_out_params d_out_params;

	ha = dev->ha;

	FUNC0(ha, "enter\n");
 
#if 0
	if (qp->qp_type != IB_QPT_GSI) {
		rc = ecore_rdma_destroy_qp(dev->rdma_ctx, qp->ecore_qp,
				&d_out_params);
		if (rc)
			return rc;
	}

	if (qp->ibqp.uobject && qp->ibqp.uobject->context)
		qlnxr_cleanup_user(dev, qp);
	else
		qlnxr_cleanup_kernel(dev, qp);
#endif

	if (qp->ibqp.uobject && qp->ibqp.uobject->context)
		FUNC3(dev, qp);
	else
		FUNC2(dev, qp);

	if (qp->qp_type != IB_QPT_GSI) {
		rc = FUNC1(dev->rdma_ctx, qp->ecore_qp,
				&d_out_params);
		if (rc)
			return rc;
	}

	FUNC0(ha, "exit\n");
	return 0;
}