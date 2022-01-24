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
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_6__ {void* qend; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; int /*<<< orphan*/  pd; } ;
struct mlx5_ib_qp {TYPE_3__ sq; TYPE_2__ ibqp; } ;
struct mlx5_ib_pd {int dummy; } ;
struct mlx5_ib_mr {int dummy; } ;
struct TYPE_4__ {int send_flags; } ;
struct ib_reg_wr {int /*<<< orphan*/  access; int /*<<< orphan*/  key; TYPE_1__ wr; int /*<<< orphan*/  mr; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_SEND_INLINE ; 
 void* FUNC0 (struct mlx5_ib_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct mlx5_ib_mr*,struct mlx5_ib_pd*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct mlx5_ib_mr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_mr* FUNC6 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_pd* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct mlx5_ib_qp *qp,
		      struct ib_reg_wr *wr,
		      void **seg, int *size)
{
	struct mlx5_ib_mr *mr = FUNC6(wr->mr);
	struct mlx5_ib_pd *pd = FUNC7(qp->ibqp.pd);

	if (FUNC8(wr->wr.send_flags & IB_SEND_INLINE)) {
		FUNC1(FUNC5(qp->ibqp.device),
			     "Invalid IB_SEND_INLINE send flag\n");
		return -EINVAL;
	}

	FUNC4(*seg, mr);
	*seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
	*size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
	if (FUNC8((*seg == qp->sq.qend)))
		*seg = FUNC0(qp, 0);

	FUNC3(*seg, mr, wr->key, wr->access);
	*seg += sizeof(struct mlx5_mkey_seg);
	*size += sizeof(struct mlx5_mkey_seg) / 16;
	if (FUNC8((*seg == qp->sq.qend)))
		*seg = FUNC0(qp, 0);

	FUNC2(*seg, mr, pd);
	*seg += sizeof(struct mlx5_wqe_data_seg);
	*size += (sizeof(struct mlx5_wqe_data_seg) / 16);

	return 0;
}