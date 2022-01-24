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
struct qlnxr_srq {struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/ * ha; } ;
struct ib_srq_attr {int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; int /*<<< orphan*/  srq_limit; } ;
struct ib_srq {int dummy; } ;
struct ecore_rdma_device {int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_srq_wr; int /*<<< orphan*/  max_srq; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct ecore_rdma_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct qlnxr_srq* FUNC2 (struct ib_srq*) ; 

int
FUNC3(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
	struct qlnxr_dev	*dev;
	struct qlnxr_srq	*srq;
	qlnx_host_t		*ha;
	struct ecore_rdma_device *qattr;
	srq = FUNC2(ibsrq);
	dev = srq->dev;
	ha = dev->ha;
	//qattr = &dev->attr;
	qattr = FUNC1(dev->rdma_ctx);
	FUNC0(ha, "enter\n");

	if (!dev->rdma_ctx) {
		FUNC0(ha, "called with invalid params"
			" rdma_ctx is NULL\n");
		return -EINVAL;
	}

	srq_attr->srq_limit = qattr->max_srq;
	srq_attr->max_wr = qattr->max_srq_wr;
	srq_attr->max_sge = qattr->max_sge;

	FUNC0(ha, "exit\n");
	return 0;
}