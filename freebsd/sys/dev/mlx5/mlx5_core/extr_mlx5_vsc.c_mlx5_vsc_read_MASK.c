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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MLX5_VSC_ADDR_OFFSET ; 
 scalar_t__ MLX5_VSC_DATA_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  address ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 int FUNC2 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct mlx5_core_dev *mdev, u32 addr, u32 *data)
{
	device_t dev = mdev->pdev->dev.bsddev;
	int vsc_addr = mdev->vsc_addr;
	int err;
	u32 in;

	if (!vsc_addr) {
		FUNC1(mdev, "Unable to call vsc read, vsc_addr not initialized\n");
		return EINVAL;
	}

	FUNC0(vsc_addr, &in, address, addr);
	FUNC4(dev, vsc_addr + MLX5_VSC_ADDR_OFFSET, in, 4);

	err = FUNC2(mdev, 1);
	if (err) {
		FUNC1(mdev, "Failed waiting for read complete flag!\n");
		return err;
	}

	*data = FUNC3(dev, vsc_addr + MLX5_VSC_DATA_OFFSET, 4);

	return 0;
}