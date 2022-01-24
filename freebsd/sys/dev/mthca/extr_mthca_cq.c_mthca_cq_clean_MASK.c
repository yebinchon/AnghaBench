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
typedef  int u32 ;
struct mthca_srq {int dummy; } ;
struct mthca_dev {int dummy; } ;
struct mthca_cqe {scalar_t__ my_qpn; int /*<<< orphan*/  wqe; } ;
struct TYPE_2__ {int cqe; } ;
struct mthca_cq {int cons_index; int /*<<< orphan*/  lock; TYPE_1__ ibcq; int /*<<< orphan*/  cqn; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTHCA_CQ_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mthca_cqe*) ; 
 struct mthca_cqe* FUNC3 (struct mthca_cq*,int) ; 
 scalar_t__ FUNC4 (struct mthca_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_cqe*,struct mthca_cqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_srq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_cqe*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*,struct mthca_cq*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(struct mthca_dev *dev, struct mthca_cq *cq, u32 qpn,
		    struct mthca_srq *srq)
{
	struct mthca_cqe *cqe;
	u32 prod_index;
	int i, nfreed = 0;

	FUNC9(&cq->lock);

	/*
	 * First we need to find the current producer index, so we
	 * know where to start cleaning from.  It doesn't matter if HW
	 * adds new entries after this loop -- the QP we're worried
	 * about is already in RESET, so the new entries won't come
	 * from our QP and therefore don't need to be checked.
	 */
	for (prod_index = cq->cons_index;
	     FUNC2(FUNC3(cq, prod_index & cq->ibcq.cqe));
	     ++prod_index)
		if (prod_index == cq->cons_index + cq->ibcq.cqe)
			break;

	if (0)
		FUNC6(dev, "Cleaning QPN %06x from CQN %06x; ci %d, pi %d\n",
			  qpn, cq->cqn, cq->cons_index, prod_index);

	/*
	 * Now sweep backwards through the CQ, removing CQ entries
	 * that match our QP by copying older entries on top of them.
	 */
	while ((int) --prod_index - (int) cq->cons_index >= 0) {
		cqe = FUNC3(cq, prod_index & cq->ibcq.cqe);
		if (cqe->my_qpn == FUNC1(qpn)) {
			if (srq && FUNC4(cqe))
				FUNC7(srq, FUNC0(cqe->wqe));
			++nfreed;
		} else if (nfreed)
			FUNC5(FUNC3(cq, (prod_index + nfreed) & cq->ibcq.cqe),
			       cqe, MTHCA_CQ_ENTRY_SIZE);
	}

	if (nfreed) {
		for (i = 0; i < nfreed; ++i)
			FUNC8(FUNC3(cq, (cq->cons_index + i) & cq->ibcq.cqe));
		FUNC12();
		cq->cons_index += nfreed;
		FUNC11(dev, cq, nfreed);
	}

	FUNC10(&cq->lock);
}