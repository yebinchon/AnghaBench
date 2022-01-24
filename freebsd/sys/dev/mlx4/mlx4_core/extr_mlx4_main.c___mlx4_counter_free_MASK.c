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
struct TYPE_3__ {int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  counters_bitmap; } ;

/* Variables and functions */
 int MLX4_DEV_CAP_FLAG_COUNTERS ; 
 scalar_t__ FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  MLX4_USE_RR ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct mlx4_dev*) ; 

void FUNC4(struct mlx4_dev *dev, u32 idx)
{
	if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_COUNTERS))
		return;

	if (idx == FUNC0(dev))
		return;

	FUNC1(dev, idx);

	FUNC2(&FUNC3(dev)->counters_bitmap, idx, MLX4_USE_RR);
	return;
}