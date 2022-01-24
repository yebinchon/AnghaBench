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
struct mlx5_fpga_device {int fdev_state; int /*<<< orphan*/  mdev; int /*<<< orphan*/  state_lock; } ;
typedef  enum mlx5_fpga_connect { ____Placeholder_mlx5_fpga_connect } mlx5_fpga_connect ;

/* Variables and functions */
 int ENODEV ; 
#define  MLX5_FDEV_STATE_DISCONNECTED 132 
#define  MLX5_FDEV_STATE_FAILURE 131 
#define  MLX5_FDEV_STATE_IN_PROGRESS 130 
#define  MLX5_FDEV_STATE_NONE 129 
#define  MLX5_FDEV_STATE_SUCCESS 128 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct mlx5_fpga_device *fdev,
				enum mlx5_fpga_connect *connect)
{
	unsigned long flags;
	int err;

	FUNC2(&fdev->state_lock, flags);
	switch (fdev->fdev_state) {
	case MLX5_FDEV_STATE_NONE:
		FUNC3(&fdev->state_lock, flags);
		return -ENODEV;
	case MLX5_FDEV_STATE_IN_PROGRESS:
	case MLX5_FDEV_STATE_SUCCESS:
	case MLX5_FDEV_STATE_FAILURE:
	case MLX5_FDEV_STATE_DISCONNECTED:
		break;
	}
	FUNC3(&fdev->state_lock, flags);

	err = FUNC0(fdev->mdev, connect);
	if (err)
		FUNC1(fdev, "Failed to connect/disconnect: %d\n", err);
	return err;
}