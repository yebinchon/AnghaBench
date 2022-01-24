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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {int vsc_addr; TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_VSC_SPACE_OFFSET ; 
 scalar_t__ MLX5_VSC_SPACE_SUPPORTED ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  status ; 

int FUNC5(struct mlx5_core_dev *mdev, u16 space)
{
	device_t dev = mdev->pdev->dev.bsddev;
	int vsc_addr = mdev->vsc_addr;
	u32 vsc_space = 0;

	if (!vsc_addr) {
		FUNC2(mdev, "Unable to set vsc space, vsc_addr not initialized\n");
		return EINVAL;
	}

	FUNC1(vsc_space, &vsc_space, space, space);
	FUNC4(dev, vsc_addr + MLX5_VSC_SPACE_OFFSET, vsc_space, 4);
	vsc_space = FUNC3(dev, vsc_addr + MLX5_VSC_SPACE_OFFSET, 4);

	if (FUNC0(vsc_space, &vsc_space, status) != MLX5_VSC_SPACE_SUPPORTED) {
		FUNC2(mdev, "Space 0x%x is not supported.\n", space);
		return ENOTSUP;
	}

	return 0;
}