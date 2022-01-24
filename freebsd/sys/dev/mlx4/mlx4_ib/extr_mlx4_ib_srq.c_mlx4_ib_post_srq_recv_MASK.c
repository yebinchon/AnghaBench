#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mlx4_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx4_wqe_data_seg {scalar_t__ addr; void* lkey; void* byte_count; } ;
struct TYPE_10__ {void** db; } ;
struct TYPE_9__ {int max_gs; } ;
struct mlx4_ib_srq {size_t head; size_t tail; int wqe_ctr; int /*<<< orphan*/  lock; TYPE_5__ db; TYPE_4__ msrq; int /*<<< orphan*/ * wrid; } ;
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct ib_recv_wr {int num_sge; TYPE_3__* sg_list; int /*<<< orphan*/  wr_id; struct ib_recv_wr* next; } ;
struct TYPE_8__ {int length; int lkey; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_1__* persist; } ;
struct TYPE_6__ {int state; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int MLX4_INVALID_LKEY ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_wqe_srq_next_seg* FUNC3 (struct mlx4_ib_srq*,size_t) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx4_ib_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_srq* FUNC8 (struct ib_srq*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct ib_srq *ibsrq, struct ib_recv_wr *wr,
			  struct ib_recv_wr **bad_wr)
{
	struct mlx4_ib_srq *srq = FUNC8(ibsrq);
	struct mlx4_wqe_srq_next_seg *next;
	struct mlx4_wqe_data_seg *scat;
	unsigned long flags;
	int err = 0;
	int nreq;
	int i;
	struct mlx4_ib_dev *mdev = FUNC7(ibsrq->device);

	FUNC5(&srq->lock, flags);
	if (mdev->dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR) {
		err = -EIO;
		*bad_wr = wr;
		nreq = 0;
		goto out;
	}

	for (nreq = 0; wr; ++nreq, wr = wr->next) {
		if (FUNC9(wr->num_sge > srq->msrq.max_gs)) {
			err = -EINVAL;
			*bad_wr = wr;
			break;
		}

		if (FUNC9(srq->head == srq->tail)) {
			err = -ENOMEM;
			*bad_wr = wr;
			break;
		}

		srq->wrid[srq->head] = wr->wr_id;

		next      = FUNC3(srq, srq->head);
		srq->head = FUNC0(next->next_wqe_index);
		scat      = (struct mlx4_wqe_data_seg *) (next + 1);

		for (i = 0; i < wr->num_sge; ++i) {
			scat[i].byte_count = FUNC1(wr->sg_list[i].length);
			scat[i].lkey       = FUNC1(wr->sg_list[i].lkey);
			scat[i].addr       = FUNC2(wr->sg_list[i].addr);
		}

		if (i < srq->msrq.max_gs) {
			scat[i].byte_count = 0;
			scat[i].lkey       = FUNC1(MLX4_INVALID_LKEY);
			scat[i].addr       = 0;
		}
	}

	if (FUNC4(nreq)) {
		srq->wqe_ctr += nreq;

		/*
		 * Make sure that descriptors are written before
		 * doorbell record.
		 */
		FUNC10();

		*srq->db.db = FUNC1(srq->wqe_ctr);
	}
out:

	FUNC6(&srq->lock, flags);

	return err;
}