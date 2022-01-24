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
struct mlx5_core_dev {scalar_t__ state; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct mlx5_core_dev*,int) ; 
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  mlx5_fast_unload_enabled ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,int) ; 

__attribute__((used)) static int FUNC8(struct mlx5_core_dev *dev)
{
	bool fast_teardown, force_teardown;
	int err;

	if (!mlx5_fast_unload_enabled) {
		FUNC3(dev, "fast unload is disabled by user\n");
		return -EOPNOTSUPP;
	}

	fast_teardown = FUNC0(dev, fast_teardown);
	force_teardown = FUNC0(dev, force_teardown);

	FUNC3(dev, "force teardown firmware support=%d\n", force_teardown);
	FUNC3(dev, "fast teardown firmware support=%d\n", fast_teardown);

	if (!fast_teardown && !force_teardown)
		return -EOPNOTSUPP;

	if (dev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
		FUNC3(dev, "Device in internal error state, giving up\n");
		return -EAGAIN;
	}

	/* Panic tear down fw command will stop the PCI bus communication
	 * with the HCA, so the health polll is no longer needed.
	 */
	FUNC4(dev);
	FUNC7(dev, false);

	err = FUNC1(dev);
	if (!err)
		goto done;

	err = FUNC2(dev);
	if (!err)
		goto done;

	FUNC3(dev, "Firmware couldn't do fast unload error: %d\n", err);
	FUNC6(dev);
	return err;
done:
	FUNC5(dev, true);
	return 0;
}