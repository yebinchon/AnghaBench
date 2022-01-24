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
struct rdma_cqe_responder {scalar_t__ status; int /*<<< orphan*/  rq_cons; } ;
struct qlnxr_qp {int dummy; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct qlnxr_cq {int dummy; } ;
struct ib_wc {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct qlnxr_cq*) ; 
 int FUNC2 (struct qlnxr_qp*,int,struct ib_wc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlnxr_dev*,struct qlnxr_qp*,struct qlnxr_cq*,struct ib_wc*,struct rdma_cqe_responder*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlnxr_cq*,struct qlnxr_qp*,struct rdma_cqe_responder*,int*) ; 

__attribute__((used)) static int
FUNC5(struct qlnxr_dev *dev,
	struct qlnxr_qp *qp,
	struct qlnxr_cq *cq,
	int num_entries,
	struct ib_wc *wc,
	struct rdma_cqe_responder *resp,
	int *update)
{
	int		cnt;
	qlnx_host_t	*ha = dev->ha;

	FUNC0(ha, "enter\n");
 
	if (resp->status == RDMA_CQE_RESP_STS_WORK_REQUEST_FLUSHED_ERR) {
		cnt = FUNC2(qp, num_entries, wc,
				resp->rq_cons);
		FUNC4(cq, qp, resp, update);
	} else {
		cnt = FUNC3(dev, qp, cq, wc, resp);
		FUNC1(cq);
		*update |= 1;
	}

	FUNC0(ha, "exit cnt = 0x%x\n", cnt);
	return cnt;
}