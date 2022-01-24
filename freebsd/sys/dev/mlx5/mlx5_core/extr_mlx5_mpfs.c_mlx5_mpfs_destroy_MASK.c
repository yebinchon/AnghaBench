#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  bitmap; } ;
struct mlx5_core_dev {TYPE_1__ mpfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_MPFS_TABLE_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct mlx5_core_dev *dev)
{
	u32 num;

	num = FUNC0(dev->mpfs.bitmap, MLX5_MPFS_TABLE_MAX);
	if (num != 0)
		FUNC1(dev, "Leaking %u MPFS MAC table entries\n", num);

	FUNC2(&dev->mpfs.spinlock);
}