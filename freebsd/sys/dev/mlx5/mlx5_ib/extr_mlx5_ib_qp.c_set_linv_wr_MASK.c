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
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_2__ {void* qend; } ;
struct mlx5_ib_qp {TYPE_1__ sq; } ;

/* Variables and functions */
 void* FUNC0 (struct mlx5_ib_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct mlx5_ib_qp *qp, void **seg, int *size)
{
	FUNC2(*seg);
	*seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
	*size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
	if (FUNC3((*seg == qp->sq.qend)))
		*seg = FUNC0(qp, 0);
	FUNC1(*seg);
	*seg += sizeof(struct mlx5_mkey_seg);
	*size += sizeof(struct mlx5_mkey_seg) / 16;
	if (FUNC3((*seg == qp->sq.qend)))
		*seg = FUNC0(qp, 0);
}