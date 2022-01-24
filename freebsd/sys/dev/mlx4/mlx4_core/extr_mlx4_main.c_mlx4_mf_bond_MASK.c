#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx4_slaves_pport {int /*<<< orphan*/  slaves; } ;
struct TYPE_4__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__* persist; } ;
struct TYPE_3__ {scalar_t__ num_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int MAX_MF_BOND_ALLOWED_SLAVES ; 
 int /*<<< orphan*/  MLX4_MFUNC_MAX ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*) ; 
 struct mlx4_slaves_pport FUNC6 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  slaves_port_1_2 ; 

__attribute__((used)) static int FUNC10(struct mlx4_dev *dev)
{
	int err = 0;
	int nvfs;
	struct mlx4_slaves_pport slaves_port1;
	struct mlx4_slaves_pport slaves_port2;
	FUNC0(slaves_port_1_2, MLX4_MFUNC_MAX);

	slaves_port1 = FUNC6(dev, 1);
	slaves_port2 = FUNC6(dev, 2);
	FUNC1(slaves_port_1_2,
		   slaves_port1.slaves, slaves_port2.slaves,
		   dev->persist->num_vfs + 1);

	/* only single port vfs are allowed */
	if (FUNC2(slaves_port_1_2, dev->persist->num_vfs + 1) > 1) {
		FUNC9(dev, "HA mode unsupported for dual ported VFs\n");
		return -EINVAL;
	}

	/* number of virtual functions is number of total functions minus one
	 * physical function for each port.
	 */
	nvfs = FUNC2(slaves_port1.slaves, dev->persist->num_vfs + 1) +
		FUNC2(slaves_port2.slaves, dev->persist->num_vfs + 1) - 2;

	/* limit on maximum allowed VFs */
	if (nvfs > MAX_MF_BOND_ALLOWED_SLAVES) {
		FUNC9(dev, "HA mode is not supported for %d VFs (max %d are allowed)\n",
			  nvfs, MAX_MF_BOND_ALLOWED_SLAVES);
		return -EINVAL;
	}

	if (dev->caps.steering_mode != MLX4_STEERING_MODE_DEVICE_MANAGED) {
		FUNC9(dev, "HA mode unsupported for NON DMFS steering\n");
		return -EINVAL;
	}

	err = FUNC4(dev);
	if (err)
		return err;
	err = FUNC5(dev);
	if (err)
		goto err1;
	err = FUNC3(dev);
	if (err)
		goto err2;

	return 0;
err2:
	(void)FUNC8(dev);
err1:
	(void)FUNC7(dev);
	return err;
}