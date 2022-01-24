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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ MLX5_VSC_COUNTER_OFFSET ; 
 int /*<<< orphan*/  MLX5_VSC_DOMAIN_SEMAPHORES ; 
 int FUNC0 (struct mlx5_core_dev*,scalar_t__,scalar_t__*) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC4(struct mlx5_core_dev *mdev, u32 addr)
{
	device_t dev = mdev->pdev->dev.bsddev;
	int vsc_addr = mdev->vsc_addr;
	u32 data;
	int ret;
	u32 id;

	ret = FUNC1(mdev, MLX5_VSC_DOMAIN_SEMAPHORES);
	if (ret)
		return ret;

	/* Get a unique ID based on the counter */
	id = FUNC3(dev, vsc_addr + MLX5_VSC_COUNTER_OFFSET, 4);

	/* Try to modify lock */
	ret = FUNC2(mdev, addr, &id);
	if (ret)
		return ret;

	/* Verify */
	ret = FUNC0(mdev, addr, &data);
	if (ret)
		return ret;
	if (data != id)
		return EBUSY;

	return 0;
}