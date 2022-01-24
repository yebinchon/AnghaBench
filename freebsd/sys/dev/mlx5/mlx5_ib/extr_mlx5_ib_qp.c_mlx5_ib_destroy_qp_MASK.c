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
struct mlx5_ib_qp {int dummy; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_qp {scalar_t__ qp_type; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_qp*) ; 
 int FUNC2 (struct ib_qp*) ; 
 struct mlx5_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_qp* FUNC4 (struct ib_qp*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct ib_qp *qp)
{
	struct mlx5_ib_dev *dev = FUNC3(qp->device);
	struct mlx5_ib_qp *mqp = FUNC4(qp);

	if (FUNC5(qp->qp_type == IB_QPT_GSI))
		return FUNC2(qp);

	FUNC0(dev, mqp);

	FUNC1(mqp);

	return 0;
}