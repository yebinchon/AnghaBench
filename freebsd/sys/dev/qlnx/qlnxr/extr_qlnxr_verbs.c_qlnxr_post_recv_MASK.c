#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_16__ {scalar_t__ lo; scalar_t__ hi; } ;
struct rdma_rq_sge {int /*<<< orphan*/  flags; scalar_t__ length; TYPE_3__ addr; } ;
struct TYPE_21__ {int /*<<< orphan*/  raw; } ;
struct TYPE_18__ {int /*<<< orphan*/  value; } ;
struct TYPE_19__ {int /*<<< orphan*/  raw; TYPE_5__ data; } ;
struct TYPE_13__ {int max_sges; size_t prod; TYPE_8__ iwarp_db2_data; scalar_t__ iwarp_db2; TYPE_6__ db_data; scalar_t__ db; int /*<<< orphan*/  pbl; } ;
struct qlnxr_qp {scalar_t__ qp_type; scalar_t__ state; int /*<<< orphan*/  q_lock; TYPE_10__ rq; TYPE_4__* rqe_wr_id; scalar_t__ srq; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {TYPE_9__* ha; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; int /*<<< orphan*/  wr_id; TYPE_2__* sg_list; } ;
struct ib_qp {int dummy; } ;
struct TYPE_20__ {scalar_t__ doorbells; } ;
struct TYPE_22__ {int /*<<< orphan*/  pci_dbells; TYPE_7__ cdev; TYPE_1__* ifp; } ;
typedef  TYPE_9__ qlnx_host_t ;
struct TYPE_17__ {int wqe_size; int /*<<< orphan*/  wr_id; } ;
struct TYPE_15__ {int lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_14__ {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_READ ; 
 scalar_t__ ECORE_ROCE_QP_STATE_RESET ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ IB_QPT_GSI ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ QLNXR_MAX_RQE_ELEMENTS_PER_RQE ; 
 scalar_t__ FUNC0 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  RDMA_RQ_SGE_L_KEY ; 
 int /*<<< orphan*/  RDMA_RQ_SGE_NUM_SGES ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_rq_sge*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 struct rdma_rq_sge* FUNC9 (int /*<<< orphan*/ *) ; 
 struct qlnxr_qp* FUNC10 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct ib_qp*,struct ib_recv_wr*,struct ib_recv_wr**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int
FUNC17(struct ib_qp *ibqp,
	struct ib_recv_wr *wr,
	struct ib_recv_wr **bad_wr)
{
 	struct qlnxr_qp		*qp = FUNC10(ibqp);
	struct qlnxr_dev	*dev = qp->dev;
	unsigned long		flags;
	int			status = 0;
	qlnx_host_t		*ha;
	uint32_t		reg_addr;

	ha = dev->ha;

	if (!(ha->ifp->if_drv_flags & IFF_DRV_RUNNING))
		return -EINVAL;

	FUNC2(ha, "enter\n");
 
	if (qp->qp_type == IB_QPT_GSI) {
		FUNC2(ha, "(qp->qp_type = IB_QPT_GSI)\n");
		return FUNC12(ibqp, wr, bad_wr);
	}

	if (qp->srq) {
		FUNC1(ha, "qp->srq [%p]"
			" QP is associated with SRQ, cannot post RQ buffers\n",
			qp->srq);
		return -EINVAL;
	}

	FUNC14(&qp->q_lock, flags);

	if (qp->state == ECORE_ROCE_QP_STATE_RESET) {
		FUNC15(&qp->q_lock, flags);
		*bad_wr = wr;

		FUNC1(ha, "qp->qp_type = ECORE_ROCE_QP_STATE_RESET\n");

		return -EINVAL;
	}

	while (wr) {
		int i;

		if ((FUNC8(&qp->rq.pbl) <
			QLNXR_MAX_RQE_ELEMENTS_PER_RQE) ||
			(wr->num_sge > qp->rq.max_sges)) {
			status = -ENOMEM;
			*bad_wr = wr;
			break;
		}
		for (i = 0; i < wr->num_sge; i++) {
			u32 flags = 0;
			struct rdma_rq_sge *rqe = FUNC9(&qp->rq.pbl);

			/* first one must include the number of SGE in the list */
			if (!i)
				FUNC4(flags, RDMA_RQ_SGE_NUM_SGES, wr->num_sge);

			FUNC4(flags, RDMA_RQ_SGE_L_KEY, wr->sg_list[i].lkey);

			FUNC3(rqe, wr->sg_list[i].addr, \
				wr->sg_list[i].length, flags);
		}
		/* Special case of no sges. FW requires between 1-4 sges...
		 * in this case we need to post 1 sge with length zero. this is
		 * because rdma write with immediate consumes an RQ. */
		if (!wr->num_sge) {
			u32 flags = 0;
			struct rdma_rq_sge *rqe = FUNC9(&qp->rq.pbl);

			/* first one must include the number of SGE in the list */
			FUNC4(flags, RDMA_RQ_SGE_L_KEY, 0);
			FUNC4(flags, RDMA_RQ_SGE_NUM_SGES, 1);

			//RQ_SGE_SET(rqe, 0, 0, flags);
			rqe->addr.hi = 0;
			rqe->addr.lo = 0;

			rqe->length = 0;
			rqe->flags = FUNC7(flags);

			i = 1;
		}

		qp->rqe_wr_id[qp->rq.prod].wr_id = wr->wr_id;
		qp->rqe_wr_id[qp->rq.prod].wqe_size = i;

		FUNC13(&qp->rq);

		FUNC16();

		qp->rq.db_data.data.value++;

	//	writel(qp->rq.db_data.raw, qp->rq.db);
		FUNC11();
	//	if (QLNX_IS_IWARP(dev)) {
	//		writel(qp->rq.iwarp_db2_data.raw, qp->rq.iwarp_db2);
	//		mmiowb(); /* for second doorbell */
	//	}

		reg_addr = (uint32_t)((uint8_t *)qp->rq.db -
				(uint8_t *)ha->cdev.doorbells);

		FUNC6(ha->pci_dbells, reg_addr, qp->rq.db_data.raw);
		FUNC5(ha->pci_dbells,  0, 0, BUS_SPACE_BARRIER_READ);

		if (FUNC0(dev)) {
			reg_addr = (uint32_t)((uint8_t *)qp->rq.iwarp_db2 -
						(uint8_t *)ha->cdev.doorbells);
			FUNC6(ha->pci_dbells, reg_addr, \
				qp->rq.iwarp_db2_data.raw);
			FUNC5(ha->pci_dbells,  0, 0, \
				BUS_SPACE_BARRIER_READ);
		}

		wr = wr->next;
	}

	FUNC15(&qp->q_lock, flags);

	FUNC2(ha, "exit status = 0x%x\n", status);

	return status;
}