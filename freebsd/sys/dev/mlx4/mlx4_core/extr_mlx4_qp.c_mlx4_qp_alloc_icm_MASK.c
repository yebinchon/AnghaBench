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
struct mlx4_dev {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_CMD_ALLOC_RES ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int /*<<< orphan*/  RES_OP_MAP_ICM ; 
 int /*<<< orphan*/  RES_QP ; 
 int FUNC0 (struct mlx4_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev, int qpn, gfp_t gfp)
{
	u64 param = 0;

	if (FUNC2(dev)) {
		FUNC3(&param, qpn);
		return FUNC1(dev, param, &param, RES_QP, RES_OP_MAP_ICM,
				    MLX4_CMD_ALLOC_RES, MLX4_CMD_TIME_CLASS_A,
				    MLX4_CMD_WRAPPED);
	}
	return FUNC0(dev, qpn, gfp);
}