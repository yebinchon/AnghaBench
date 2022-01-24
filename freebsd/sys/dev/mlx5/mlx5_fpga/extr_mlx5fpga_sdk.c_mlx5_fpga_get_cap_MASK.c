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
struct mlx5_fpga_device {int /*<<< orphan*/  state_lock; TYPE_2__* mdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  fpga; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct mlx5_fpga_device *fdev, u32 *fpga_caps)
{
	unsigned long flags;

	FUNC1(&fdev->state_lock, flags);
	FUNC0(fpga_caps, &fdev->mdev->caps.fpga, sizeof(fdev->mdev->caps.fpga));
	FUNC2(&fdev->state_lock, flags);
}