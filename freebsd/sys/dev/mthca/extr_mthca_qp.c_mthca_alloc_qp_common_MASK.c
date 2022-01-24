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
struct TYPE_4__ {int max_gs; int max; int wqe_shift; void* last; int /*<<< orphan*/  lock; } ;
struct mthca_qp {int refcount; int sq_policy; int send_wqe_offset; TYPE_2__ rq; TYPE_2__ sq; scalar_t__ resp_depth; scalar_t__ atomic_rd_en; int /*<<< orphan*/  state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  wait; } ;
struct TYPE_3__ {scalar_t__ uobject; } ;
struct mthca_pd {TYPE_1__ ibpd; } ;
struct mthca_next_seg {void* nda_op; void* ee_nds; } ;
struct mthca_dev {int dummy; } ;
struct mthca_data_seg {void* lkey; } ;
struct mthca_cq {int dummy; } ;
typedef  enum ib_sig_type { ____Placeholder_ib_sig_type } ib_sig_type ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_RESET ; 
 int MTHCA_INVAL_LKEY ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (struct mthca_qp*,int) ; 
 void* FUNC2 (struct mthca_qp*,int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,struct mthca_pd*,struct mthca_qp*) ; 
 int FUNC6 (struct mthca_dev*,struct mthca_qp*) ; 
 int FUNC7 (struct mthca_dev*,struct mthca_pd*,struct mthca_qp*) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_dev*,struct mthca_qp*) ; 
 scalar_t__ FUNC9 (struct mthca_dev*) ; 
 int FUNC10 (struct mthca_dev*,struct mthca_qp*) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*,struct mthca_qp*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct mthca_dev *dev,
				 struct mthca_pd *pd,
				 struct mthca_cq *send_cq,
				 struct mthca_cq *recv_cq,
				 enum ib_sig_type send_policy,
				 struct mthca_qp *qp)
{
	int ret;
	int i;
	struct mthca_next_seg *next;

	qp->refcount = 1;
	FUNC4(&qp->wait);
	FUNC13(&qp->mutex);
	qp->state    	 = IB_QPS_RESET;
	qp->atomic_rd_en = 0;
	qp->resp_depth   = 0;
	qp->sq_policy    = send_policy;
	FUNC12(&qp->sq);
	FUNC12(&qp->rq);

	FUNC14(&qp->sq.lock);
	FUNC14(&qp->rq.lock);

	ret = FUNC10(dev, qp);
	if (ret)
		return ret;

	ret = FUNC7(dev, pd, qp);
	if (ret) {
		FUNC11(dev, qp);
		return ret;
	}

	FUNC5(dev, pd, qp);

	/*
	 * If this is a userspace QP, we're done now.  The doorbells
	 * will be allocated and buffers will be initialized in
	 * userspace.
	 */
	if (pd->ibpd.uobject)
		return 0;

	ret = FUNC6(dev, qp);
	if (ret) {
		FUNC8(dev, qp);
		FUNC11(dev, qp);
		return ret;
	}

	if (FUNC9(dev)) {
		struct mthca_data_seg *scatter;
		int size = (sizeof (struct mthca_next_seg) +
			    qp->rq.max_gs * sizeof (struct mthca_data_seg)) / 16;

		for (i = 0; i < qp->rq.max; ++i) {
			next = FUNC1(qp, i);
			next->nda_op = FUNC0(((i + 1) & (qp->rq.max - 1)) <<
						   qp->rq.wqe_shift);
			next->ee_nds = FUNC0(size);

			for (scatter = (void *) (next + 1);
			     (void *) scatter < (void *) next + (1 << qp->rq.wqe_shift);
			     ++scatter)
				scatter->lkey = FUNC0(MTHCA_INVAL_LKEY);
		}

		for (i = 0; i < qp->sq.max; ++i) {
			next = FUNC2(qp, i);
			next->nda_op = FUNC0((((i + 1) & (qp->sq.max - 1)) <<
						    qp->sq.wqe_shift) +
						   qp->send_wqe_offset);
		}
	} else {
		for (i = 0; i < qp->rq.max; ++i) {
			next = FUNC1(qp, i);
			next->nda_op = FUNC3((((i + 1) % qp->rq.max) <<
					      qp->rq.wqe_shift) | 1);
		}

	}

	qp->sq.last = FUNC2(qp, qp->sq.max - 1);
	qp->rq.last = FUNC1(qp, qp->rq.max - 1);

	return 0;
}