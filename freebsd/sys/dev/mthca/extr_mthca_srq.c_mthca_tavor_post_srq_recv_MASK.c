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
struct mthca_srq {int first_free; int srqn; int max_gs; int wqe_shift; int /*<<< orphan*/  lock; int /*<<< orphan*/ * wrid; void* last; } ;
struct mthca_next_seg {scalar_t__ ee_nds; } ;
struct mthca_dev {int /*<<< orphan*/  doorbell_lock; scalar_t__ kar; } ;
struct mthca_data_seg {int dummy; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; scalar_t__ sg_list; struct ib_recv_wr* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTHCA_NEXT_DBD ; 
 scalar_t__ MTHCA_RECEIVE_DOORBELL ; 
 int MTHCA_TAVOR_MAX_WQES_PER_RECV_DB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct mthca_srq*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mthca_dev* FUNC11 (int /*<<< orphan*/ ) ; 
 struct mthca_srq* FUNC12 (struct ib_srq*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int* FUNC15 (void*) ; 

int FUNC16(struct ib_srq *ibsrq, struct ib_recv_wr *wr,
			      struct ib_recv_wr **bad_wr)
{
	struct mthca_dev *dev = FUNC11(ibsrq->device);
	struct mthca_srq *srq = FUNC12(ibsrq);
	unsigned long flags;
	int err = 0;
	int first_ind;
	int ind;
	int next_ind;
	int nreq;
	int i;
	void *wqe;
	void *prev_wqe;

	FUNC9(&srq->lock, flags);

	first_ind = srq->first_free;

	for (nreq = 0; wr; wr = wr->next) {
		ind       = srq->first_free;
		wqe       = FUNC2(srq, ind);
		next_ind  = *FUNC15(wqe);

		if (FUNC13(next_ind < 0)) {
			FUNC5(dev, "SRQ %06x full\n", srq->srqn);
			err = -ENOMEM;
			*bad_wr = wr;
			break;
		}

		prev_wqe  = srq->last;
		srq->last = wqe;

		((struct mthca_next_seg *) wqe)->ee_nds = 0;
		/* flags field will always remain 0 */

		wqe += sizeof (struct mthca_next_seg);

		if (FUNC13(wr->num_sge > srq->max_gs)) {
			err = -EINVAL;
			*bad_wr = wr;
			srq->last = prev_wqe;
			break;
		}

		for (i = 0; i < wr->num_sge; ++i) {
			FUNC6(wqe, wr->sg_list + i);
			wqe += sizeof (struct mthca_data_seg);
		}

		if (i < srq->max_gs)
			FUNC7(wqe);

		((struct mthca_next_seg *) prev_wqe)->ee_nds =
			FUNC1(MTHCA_NEXT_DBD);

		srq->wrid[ind]  = wr->wr_id;
		srq->first_free = next_ind;

		++nreq;
		if (FUNC13(nreq == MTHCA_TAVOR_MAX_WQES_PER_RECV_DB)) {
			nreq = 0;

			/*
			 * Make sure that descriptors are written
			 * before doorbell is rung.
			 */
			FUNC14();

			FUNC8(first_ind << srq->wqe_shift, srq->srqn << 8,
				      dev->kar + MTHCA_RECEIVE_DOORBELL,
				      FUNC0(&dev->doorbell_lock));

			first_ind = srq->first_free;
		}
	}

	if (FUNC3(nreq)) {
		/*
		 * Make sure that descriptors are written before
		 * doorbell is rung.
		 */
		FUNC14();

		FUNC8(first_ind << srq->wqe_shift, (srq->srqn << 8) | nreq,
			      dev->kar + MTHCA_RECEIVE_DOORBELL,
			      FUNC0(&dev->doorbell_lock));
	}

	/*
	 * Make sure doorbells don't leak out of SRQ spinlock and
	 * reach the HCA out of order:
	 */
	FUNC4();

	FUNC10(&srq->lock, flags);
	return err;
}