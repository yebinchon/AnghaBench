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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_qp {int /*<<< orphan*/  qpn; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_RES_RQ ; 
 int FUNC0 (struct mlx5_core_dev*,struct mlx5_core_qp*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx5_core_dev *dev, u32 *in, int inlen,
				struct mlx5_core_qp *rq)
{
	int err;

	err = FUNC1(dev, in, inlen, &rq->qpn);
	if (err)
		return err;

	err = FUNC0(dev, rq, MLX5_RES_RQ);
	if (err)
		FUNC2(dev, rq->qpn);

	return err;
}