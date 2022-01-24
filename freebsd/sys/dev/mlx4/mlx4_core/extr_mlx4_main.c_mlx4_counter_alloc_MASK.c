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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_CMD_ALLOC_RES ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int /*<<< orphan*/  RES_COUNTER ; 
 int /*<<< orphan*/  RES_OP_RESERVE ; 
 int FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx4_dev*) ; 

int FUNC4(struct mlx4_dev *dev, u32 *idx)
{
	u64 out_param;
	int err;

	if (FUNC3(dev)) {
		err = FUNC2(dev, 0, &out_param, RES_COUNTER,
				   RES_OP_RESERVE, MLX4_CMD_ALLOC_RES,
				   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
		if (!err)
			*idx = FUNC1(&out_param);

		return err;
	}
	return FUNC0(dev, idx);
}