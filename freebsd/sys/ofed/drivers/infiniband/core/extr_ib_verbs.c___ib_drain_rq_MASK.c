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
struct ib_recv_wr {TYPE_1__* wr_cqe; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {TYPE_2__* recv_cq; } ;
struct TYPE_3__ {int /*<<< orphan*/  done; } ;
struct ib_drain_cqe {int /*<<< orphan*/  done; TYPE_1__ cqe; } ;
struct TYPE_4__ {scalar_t__ poll_ctx; } ;

/* Variables and functions */
 scalar_t__ IB_POLL_DIRECT ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  ib_drain_qp_done ; 
 int FUNC1 (struct ib_qp*,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ib_qp*,struct ib_recv_wr*,struct ib_recv_wr**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ib_qp *qp)
{
	struct ib_qp_attr attr = { .qp_state = IB_QPS_ERR };
	struct ib_drain_cqe rdrain;
	struct ib_recv_wr rwr = {}, *bad_rwr;
	int ret;

	if (qp->recv_cq->poll_ctx == IB_POLL_DIRECT) {
		FUNC0(qp->recv_cq->poll_ctx == IB_POLL_DIRECT,
			  "IB_POLL_DIRECT poll_ctx not supported for drain\n");
		return;
	}

	rwr.wr_cqe = &rdrain.cqe;
	rdrain.cqe.done = ib_drain_qp_done;
	FUNC3(&rdrain.done);

	ret = FUNC1(qp, &attr, IB_QP_STATE);
	if (ret) {
		FUNC0(ret, "failed to drain recv queue: %d\n", ret);
		return;
	}

	ret = FUNC2(qp, &rwr, &bad_rwr);
	if (ret) {
		FUNC0(ret, "failed to drain recv queue: %d\n", ret);
		return;
	}

	FUNC4(&rdrain.done);
}