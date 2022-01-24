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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 scalar_t__ MLX5_VSC_ADDR_OFFSET ; 
 scalar_t__ FUNC1 (int,scalar_t__*,scalar_t__) ; 
 int MLX5_VSC_MAX_RETRIES ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 () ; 

int
FUNC4(struct mlx5_core_dev *mdev, u32 expected)
{
	device_t dev = mdev->pdev->dev.bsddev;
	int vsc_addr = mdev->vsc_addr;
	int retries = 0;
	u32 flag;

	while (true) {
		if (retries > MLX5_VSC_MAX_RETRIES)
			return EBUSY;

		flag = FUNC2(dev, vsc_addr + MLX5_VSC_ADDR_OFFSET, 4);
		if (expected == FUNC1(vsc_addr, &flag, flag))
			break;

		retries++;
		FUNC0((FUNC3() % 90) + 10);
	}

	return 0;
}