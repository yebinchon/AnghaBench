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
struct TYPE_2__ {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  spinlock; } ;
struct mlx5_core_dev {TYPE_1__ mpfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_MPFS_TABLE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct mlx5_core_dev *dev)
{

	FUNC1(&dev->mpfs.spinlock);
	FUNC0(dev->mpfs.bitmap, MLX5_MPFS_TABLE_MAX);
	return (0);
}