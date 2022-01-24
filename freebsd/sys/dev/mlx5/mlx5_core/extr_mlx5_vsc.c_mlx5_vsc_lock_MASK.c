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
 int EINVAL ; 
 scalar_t__ MLX5_VSC_COUNTER_OFFSET ; 
 int MLX5_VSC_MAX_RETRIES ; 
 scalar_t__ MLX5_VSC_SEMA_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int FUNC4 () ; 

int FUNC5(struct mlx5_core_dev *mdev)
{
	device_t dev = mdev->pdev->dev.bsddev;
	int vsc_addr = mdev->vsc_addr;
	int retries = 0;
	u32 lock_val;
	u32 counter;

	if (!vsc_addr) {
		FUNC1(mdev, "Unable to acquire vsc lock, vsc_addr not initialized\n");
		return EINVAL;
	}

	while (true) {
		if (retries > MLX5_VSC_MAX_RETRIES)
			return EBUSY;

		if (FUNC2(dev, vsc_addr + MLX5_VSC_SEMA_OFFSET, 4)) {
			retries++;
			/*
			 * The PRM suggests random 0 - 10ms to prevent multiple
			 * waiters on the same interval in order to avoid starvation
			 */
			FUNC0((FUNC4() % 9000) + 1000);
			continue;
		}

		counter = FUNC2(dev, vsc_addr + MLX5_VSC_COUNTER_OFFSET, 4);
		FUNC3(dev, vsc_addr + MLX5_VSC_SEMA_OFFSET, counter, 4);
		lock_val = FUNC2(dev, vsc_addr + MLX5_VSC_SEMA_OFFSET, 4);

		if (lock_val == counter)
			break;

		retries++;
	}

	return 0;
}