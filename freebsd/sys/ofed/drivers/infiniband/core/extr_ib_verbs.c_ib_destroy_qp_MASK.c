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
struct ib_srq {int /*<<< orphan*/  usecnt; } ;
struct ib_rwq_ind_table {int /*<<< orphan*/  usecnt; } ;
struct ib_qp {TYPE_1__* device; struct ib_rwq_ind_table* rwq_ind_tbl; struct ib_srq* srq; struct ib_cq* recv_cq; struct ib_cq* send_cq; struct ib_pd* pd; struct ib_qp* real_qp; int /*<<< orphan*/  usecnt; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; } ;
struct ib_cq {int /*<<< orphan*/  usecnt; } ;
struct TYPE_2__ {int (* destroy_qp ) (struct ib_qp*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ib_qp*) ; 

int FUNC4(struct ib_qp *qp)
{
	struct ib_pd *pd;
	struct ib_cq *scq, *rcq;
	struct ib_srq *srq;
	struct ib_rwq_ind_table *ind_tbl;
	int ret;

	if (FUNC2(&qp->usecnt))
		return -EBUSY;

	if (qp->real_qp != qp)
		return FUNC0(qp);

	pd   = qp->pd;
	scq  = qp->send_cq;
	rcq  = qp->recv_cq;
	srq  = qp->srq;
	ind_tbl = qp->rwq_ind_tbl;

	ret = qp->device->destroy_qp(qp);
	if (!ret) {
		if (pd)
			FUNC1(&pd->usecnt);
		if (scq)
			FUNC1(&scq->usecnt);
		if (rcq)
			FUNC1(&rcq->usecnt);
		if (srq)
			FUNC1(&srq->usecnt);
		if (ind_tbl)
			FUNC1(&ind_tbl->usecnt);
	}

	return ret;
}