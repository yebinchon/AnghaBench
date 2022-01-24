#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5_wqe_data_seg {scalar_t__ addr; void* lkey; scalar_t__ byte_count; } ;
struct mlx5_rwqe_sig {int dummy; } ;
struct TYPE_6__ {int head; int wqe_cnt; int max_gs; int /*<<< orphan*/  lock; int /*<<< orphan*/ * wrid; } ;
struct TYPE_5__ {void** db; } ;
struct TYPE_4__ {int /*<<< orphan*/  recv_cq; } ;
struct mlx5_ib_qp {TYPE_3__ rq; TYPE_2__ db; scalar_t__ wq_sig; TYPE_1__ ibqp; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; scalar_t__ sg_list; struct ib_recv_wr* next; } ;
struct ib_qp {scalar_t__ qp_type; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int MLX5_INVALID_LKEY ; 
 void* FUNC0 (int) ; 
 struct mlx5_wqe_data_seg* FUNC1 (struct mlx5_ib_qp*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct ib_qp*,struct ib_recv_wr*,struct ib_recv_wr**) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_wqe_data_seg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_rwqe_sig*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx5_ib_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_qp* FUNC10 (struct ib_qp*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(struct ib_qp *ibqp, struct ib_recv_wr *wr,
		      struct ib_recv_wr **bad_wr)
{
	struct mlx5_ib_qp *qp = FUNC10(ibqp);
	struct mlx5_wqe_data_seg *scat;
	struct mlx5_rwqe_sig *sig;
	struct mlx5_ib_dev *dev = FUNC9(ibqp->device);
	struct mlx5_core_dev *mdev = dev->mdev;
	unsigned long flags;
	int err = 0;
	int nreq;
	int ind;
	int i;

	if (FUNC11(ibqp->qp_type == IB_QPT_GSI))
		return FUNC3(ibqp, wr, bad_wr);

	FUNC7(&qp->rq.lock, flags);

	if (mdev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
		err = -EIO;
		*bad_wr = wr;
		nreq = 0;
		goto out;
	}

	ind = qp->rq.head & (qp->rq.wqe_cnt - 1);

	for (nreq = 0; wr; nreq++, wr = wr->next) {
		if (FUNC4(&qp->rq, nreq, qp->ibqp.recv_cq)) {
			err = -ENOMEM;
			*bad_wr = wr;
			goto out;
		}

		if (FUNC11(wr->num_sge > qp->rq.max_gs)) {
			err = -EINVAL;
			*bad_wr = wr;
			goto out;
		}

		scat = FUNC1(qp, ind);
		if (qp->wq_sig)
			scat++;

		for (i = 0; i < wr->num_sge; i++)
			FUNC5(scat + i, wr->sg_list + i);

		if (i < qp->rq.max_gs) {
			scat[i].byte_count = 0;
			scat[i].lkey       = FUNC0(MLX5_INVALID_LKEY);
			scat[i].addr       = 0;
		}

		if (qp->wq_sig) {
			sig = (struct mlx5_rwqe_sig *)scat;
			FUNC6(sig, (qp->rq.max_gs + 1) << 2);
		}

		qp->rq.wrid[ind] = wr->wr_id;

		ind = (ind + 1) & (qp->rq.wqe_cnt - 1);
	}

out:
	if (FUNC2(nreq)) {
		qp->rq.head += nreq;

		/* Make sure that descriptors are written before
		 * doorbell record.
		 */
		FUNC12();

		*qp->db.db = FUNC0(qp->rq.head & 0xffff);
	}

	FUNC8(&qp->rq.lock, flags);

	return err;
}