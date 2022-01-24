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
struct mlx5_fpga_device {int /*<<< orphan*/  state_lock; void* fdev_state; int /*<<< orphan*/  load_event; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 void* MLX5_FDEV_STATE_FAILURE ; 
 void* MLX5_FDEV_STATE_IN_PROGRESS ; 
 void* MLX5_FDEV_STATE_SUCCESS ; 
 int /*<<< orphan*/  MLX5_FPGA_CTRL_OPERATION_RELOAD ; 
 int /*<<< orphan*/  MLX5_FPGA_LOAD_TIMEOUT ; 
 unsigned long jiffies ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_device*,char*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct mlx5_fpga_device *fdev)
{
	struct mlx5_core_dev *mdev = fdev->mdev;
	unsigned long timeout;
	unsigned long flags;
	int err = 0;

	FUNC3(fdev, "mlx5/fpga - reload started\n");
	fdev->fdev_state = MLX5_FDEV_STATE_IN_PROGRESS;
	FUNC5(&fdev->load_event);
	err = FUNC0(mdev, MLX5_FPGA_CTRL_OPERATION_RELOAD);
	if (err) {
		FUNC2(fdev, "Failed to request reload: %d\n",
			      err);
		goto out;
	}
	timeout = jiffies + FUNC4(MLX5_FPGA_LOAD_TIMEOUT);
	err = FUNC8(&fdev->load_event,
					  timeout - jiffies);
	if (err < 0) {
		FUNC2(fdev, "Failed waiting for reload: %d\n", err);
		fdev->fdev_state = MLX5_FDEV_STATE_FAILURE;
		goto out;
	}
	/* Check device loaded successful */
	err = FUNC1(mdev);
	if (err) {
		FUNC2(fdev, "Failed load check for reload: %d\n", err);
		fdev->fdev_state = MLX5_FDEV_STATE_FAILURE;
		goto out;
	}
	FUNC6(&fdev->state_lock, flags);
	fdev->fdev_state = MLX5_FDEV_STATE_SUCCESS;
	FUNC7(&fdev->state_lock, flags);
	FUNC3(fdev, "mlx5/fpga - reload ended\n");
out:
	return err;
}