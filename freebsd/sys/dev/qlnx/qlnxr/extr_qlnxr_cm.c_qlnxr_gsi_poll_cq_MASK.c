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
struct TYPE_8__ {size_t cons; size_t gsi_cons; } ;
struct qlnxr_qp {TYPE_4__ sq; TYPE_3__* wqe_wr_id; int /*<<< orphan*/  ibqp; TYPE_4__ rq; TYPE_2__* rqe_wr_id; } ;
struct qlnxr_dev {int /*<<< orphan*/  ha; struct qlnxr_qp* gsi_qp; } ;
struct qlnxr_cq {int /*<<< orphan*/  cq_lock; } ;
struct ib_wc {int wc_flags; void* status; int /*<<< orphan*/  opcode; int /*<<< orphan*/  wr_id; int /*<<< orphan*/ * qp; scalar_t__ vlan_id; int /*<<< orphan*/  smac; int /*<<< orphan*/  byte_len; scalar_t__ pkey_index; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct TYPE_7__ {int /*<<< orphan*/  wr_id; } ;
struct TYPE_6__ {scalar_t__ vlan_id; int /*<<< orphan*/  smac; TYPE_1__* sg_list; scalar_t__ rc; int /*<<< orphan*/  wr_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 void* IB_WC_GENERAL_ERR ; 
 int IB_WC_GRH ; 
 int IB_WC_IP_CSUM_OK ; 
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  IB_WC_SEND ; 
 void* IB_WC_SUCCESS ; 
 int IB_WC_WITH_SMAC ; 
 int IB_WC_WITH_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct qlnxr_cq* FUNC1 (struct ib_cq*) ; 
 struct qlnxr_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_wc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC8(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct qlnxr_dev *dev = FUNC2((ibcq->device));
	struct qlnxr_cq *cq = FUNC1(ibcq);
	struct qlnxr_qp *qp = dev->gsi_qp;
	unsigned long flags;
	int i = 0;

	FUNC0(dev->ha, "enter\n");

	FUNC6(&cq->cq_lock, flags);

	while (i < num_entries && qp->rq.cons != qp->rq.gsi_cons) {
		FUNC4(&wc[i], 0, sizeof(*wc));

		wc[i].qp = &qp->ibqp;
		wc[i].wr_id = qp->rqe_wr_id[qp->rq.cons].wr_id;
		wc[i].opcode = IB_WC_RECV;
		wc[i].pkey_index = 0;
		wc[i].status = (qp->rqe_wr_id[qp->rq.cons].rc)?
			       IB_WC_GENERAL_ERR:IB_WC_SUCCESS;
		/* 0 - currently only one recv sg is supported */
		wc[i].byte_len = qp->rqe_wr_id[qp->rq.cons].sg_list[0].length;
		wc[i].wc_flags |= IB_WC_GRH | IB_WC_IP_CSUM_OK;

#if __FreeBSD_version >= 1100000
		memcpy(&wc[i].smac, qp->rqe_wr_id[qp->rq.cons].smac, ETH_ALEN);
		wc[i].wc_flags |= IB_WC_WITH_SMAC;

		if (qp->rqe_wr_id[qp->rq.cons].vlan_id) {
			wc[i].wc_flags |= IB_WC_WITH_VLAN;
			wc[i].vlan_id = qp->rqe_wr_id[qp->rq.cons].vlan_id;
		}

#endif
		FUNC5(&qp->rq);
		i++;
	}

	while (i < num_entries && qp->sq.cons != qp->sq.gsi_cons) {
		FUNC4(&wc[i], 0, sizeof(*wc));

		wc[i].qp = &qp->ibqp;
		wc[i].wr_id = qp->wqe_wr_id[qp->sq.cons].wr_id;
		wc[i].opcode = IB_WC_SEND;
		wc[i].status = IB_WC_SUCCESS;

		FUNC5(&qp->sq);
		i++;
	}

	FUNC7(&cq->cq_lock, flags);

	FUNC0(dev->ha, "exit i = %d\n", i);
	return i;
}