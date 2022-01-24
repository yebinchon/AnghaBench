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
typedef  int /*<<< orphan*/  u64 ;
struct rdma_cqe_responder {int dummy; } ;
struct TYPE_4__ {size_t cons; int /*<<< orphan*/  pbl; } ;
struct qlnxr_qp {TYPE_2__ rq; TYPE_1__* rqe_wr_id; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_3__ {int /*<<< orphan*/  wqe_size; int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_cq*,struct ib_wc*,struct rdma_cqe_responder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(struct qlnxr_dev *dev,
	struct qlnxr_qp *qp,
	struct qlnxr_cq *cq,
	struct ib_wc *wc,
	struct rdma_cqe_responder *resp)
{
	qlnx_host_t	*ha = dev->ha;
	u64		wr_id = qp->rqe_wr_id[qp->rq.cons].wr_id;

	FUNC0(ha, "enter\n");
 
	FUNC1(dev, qp, cq, wc, resp, wr_id);

	while (qp->rqe_wr_id[qp->rq.cons].wqe_size--)
		FUNC2(&qp->rq.pbl);
	FUNC3(&qp->rq);

	FUNC0(ha, "exit\n");
	return 1;
}