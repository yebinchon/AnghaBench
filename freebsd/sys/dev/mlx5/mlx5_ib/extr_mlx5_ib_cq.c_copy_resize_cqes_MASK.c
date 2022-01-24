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
typedef  int u8 ;
struct mlx5_ib_dev {int dummy; } ;
struct TYPE_7__ {int cons_index; int /*<<< orphan*/  cqn; } ;
struct TYPE_6__ {int cqe_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_cq {TYPE_3__ mcq; TYPE_4__* resize_buf; TYPE_2__ buf; TYPE_1__ ibcq; } ;
struct mlx5_cqe64 {int op_own; } ;
struct TYPE_8__ {int cqe_size; int nent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MLX5_CQE_OWNER_MASK ; 
 int MLX5_CQE_RESIZE_CQ ; 
 void* FUNC0 (TYPE_4__*,int,int) ; 
 void* FUNC1 (struct mlx5_ib_cq*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 struct mlx5_ib_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlx5_ib_cq *cq)
{
	struct mlx5_ib_dev *dev = FUNC6(cq->ibcq.device);
	struct mlx5_cqe64 *scqe64;
	struct mlx5_cqe64 *dcqe64;
	void *start_cqe;
	void *scqe;
	void *dcqe;
	int ssize;
	int dsize;
	int i;
	u8 sw_own;

	ssize = cq->buf.cqe_size;
	dsize = cq->resize_buf->cqe_size;
	if (ssize != dsize) {
		FUNC3(dev, "resize from different cqe size is not supported\n");
		return -EINVAL;
	}

	i = cq->mcq.cons_index;
	scqe = FUNC1(cq, i);
	scqe64 = ssize == 64 ? scqe : scqe + 64;
	start_cqe = scqe;
	if (!scqe) {
		FUNC3(dev, "expected cqe in sw ownership\n");
		return -EINVAL;
	}

	while ((scqe64->op_own >> 4) != MLX5_CQE_RESIZE_CQ) {
		dcqe = FUNC0(cq->resize_buf,
					(i + 1) & (cq->resize_buf->nent),
					dsize);
		dcqe64 = dsize == 64 ? dcqe : dcqe + 64;
		sw_own = FUNC5(i + 1, cq->resize_buf->nent);
		FUNC2(dcqe, scqe, dsize);
		dcqe64->op_own = (dcqe64->op_own & ~MLX5_CQE_OWNER_MASK) | sw_own;

		++i;
		scqe = FUNC1(cq, i);
		scqe64 = ssize == 64 ? scqe : scqe + 64;
		if (!scqe) {
			FUNC3(dev, "expected cqe in sw ownership\n");
			return -EINVAL;
		}

		if (scqe == start_cqe) {
			FUNC4("resize CQ failed to get resize CQE, CQN 0x%x\n",
				cq->mcq.cqn);
			return -ENOMEM;
		}
	}
	++cq->mcq.cons_index;
	return 0;
}