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
struct mlx5_fpga_device {int /*<<< orphan*/  client_data_list; int /*<<< orphan*/  fdev_state; int /*<<< orphan*/  load_event; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_FDEV_STATE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx5_fpga_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_fpga_device *FUNC4(void)
{
	struct mlx5_fpga_device *fdev = NULL;

	fdev = FUNC2(sizeof(*fdev), GFP_KERNEL);
	if (!fdev)
		return NULL;

	FUNC3(&fdev->state_lock);
	FUNC1(&fdev->load_event);
	fdev->fdev_state = MLX5_FDEV_STATE_NONE;
	FUNC0(&fdev->client_data_list);
	return fdev;
}