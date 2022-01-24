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
struct mlx5_fpga_device {int fdev_state; int /*<<< orphan*/  load_event; int /*<<< orphan*/  state_lock; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int /*<<< orphan*/  intf_state_mutex; int /*<<< orphan*/  intf_state; } ;
typedef  enum mlx5_fpga_image { ____Placeholder_mlx5_fpga_image } mlx5_fpga_image ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
#define  MLX5_FDEV_STATE_DISCONNECTED 132 
#define  MLX5_FDEV_STATE_FAILURE 131 
#define  MLX5_FDEV_STATE_IN_PROGRESS 130 
#define  MLX5_FDEV_STATE_NONE 129 
#define  MLX5_FDEV_STATE_SUCCESS 128 
 int /*<<< orphan*/  MLX5_FPGA_CTRL_OPERATION_RESET ; 
 int MLX5_FPGA_IMAGE_FACTORY ; 
 int MLX5_FPGA_IMAGE_RELOAD ; 
 int MLX5_FPGA_IMAGE_RESET ; 
 int /*<<< orphan*/  MLX5_FPGA_LOAD_TIMEOUT ; 
 int /*<<< orphan*/  MLX5_INTERFACE_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_fpga_device*) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fpga_device*,char*) ; 
 int FUNC8 (struct mlx5_core_dev*,int) ; 
 int FUNC9 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC19(struct mlx5_fpga_device *fdev,
			    enum mlx5_fpga_image image)
{
	struct mlx5_core_dev *mdev = fdev->mdev;
	unsigned long timeout;
	unsigned long flags;
	int err = 0;

	FUNC16(&fdev->state_lock, flags);
	switch (fdev->fdev_state) {
	case MLX5_FDEV_STATE_NONE:
		err = -ENODEV;
		break;
	case MLX5_FDEV_STATE_IN_PROGRESS:
		err = -EBUSY;
		break;
	case MLX5_FDEV_STATE_SUCCESS:
	case MLX5_FDEV_STATE_FAILURE:
	case MLX5_FDEV_STATE_DISCONNECTED:
		break;
	}
	FUNC17(&fdev->state_lock, flags);
	if (err)
		return err;

	FUNC12(&mdev->intf_state_mutex);

	if (image == MLX5_FPGA_IMAGE_RELOAD) {
		err = FUNC3(fdev);
		goto out;
	}

	FUNC0(MLX5_INTERFACE_STATE_UP, &mdev->intf_state);

	FUNC10(mdev);
	/* XXXKIB	mlx5_accel_ipsec_cleanup(mdev); */
	FUNC5(mdev);

	fdev->fdev_state = MLX5_FDEV_STATE_IN_PROGRESS;
	FUNC14(&fdev->load_event);

	if (image <= MLX5_FPGA_IMAGE_FACTORY) {
		FUNC7(fdev, "Loading from flash\n");
		err = FUNC8(mdev, image);
		if (err) {
			FUNC6(fdev, "Failed to request load: %d\n",
				      err);
			goto out;
		}
	} else if (image == MLX5_FPGA_IMAGE_RESET) {
		FUNC7(fdev, "Resetting\n");
		err = FUNC2(mdev, MLX5_FPGA_CTRL_OPERATION_RESET);
		if (err) {
			FUNC6(fdev, "Failed to request reset: %d\n",
				      err);
			goto out;
		}
	} else {
		FUNC6(fdev, "Unknown command: %d\n",
			      image);
		goto out;
	}

	timeout = jiffies + FUNC11(MLX5_FPGA_LOAD_TIMEOUT);
	err = FUNC18(&fdev->load_event, timeout - jiffies);
	if (err < 0) {
		FUNC6(fdev, "Failed waiting for FPGA load: %d\n", err);
		fdev->fdev_state = MLX5_FDEV_STATE_FAILURE;
		goto out;
	}

	err = FUNC4(mdev);
	if (err) {
		FUNC1(mdev, "fpga device start failed %d\n", err);
		goto out;
	}
	/* XXXKIB err = mlx5_accel_ipsec_init(mdev); */
	if (err) {
		FUNC1(mdev, "IPSec device start failed %d\n", err);
		goto err_fpga;
	}

	err = FUNC9(mdev);
	if (err) {
		FUNC1(mdev, "mlx5_register_device failed %d\n", err);
		fdev->fdev_state = MLX5_FDEV_STATE_FAILURE;
		goto err_ipsec;
	}

	FUNC15(MLX5_INTERFACE_STATE_UP, &mdev->intf_state);
	goto out;

err_ipsec:
	/* XXXKIB mlx5_accel_ipsec_cleanup(mdev); */
err_fpga:
	FUNC5(mdev);
out:
	FUNC13(&mdev->intf_state_mutex);
	return err;
}