#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_fpga_query {int /*<<< orphan*/  oper_image; int /*<<< orphan*/  admin_image; int /*<<< orphan*/  image_status; } ;
struct mlx5_fpga_device {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  last_oper_image; int /*<<< orphan*/  last_admin_image; int /*<<< orphan*/  image_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC2(struct mlx5_fpga_device *fdev,
			    struct mlx5_fpga_query *query)
{
	unsigned long flags;

	FUNC0(&fdev->state_lock, flags);
	query->image_status = fdev->image_status;
	query->admin_image = fdev->last_admin_image;
	query->oper_image = fdev->last_oper_image;
	FUNC1(&fdev->state_lock, flags);
}