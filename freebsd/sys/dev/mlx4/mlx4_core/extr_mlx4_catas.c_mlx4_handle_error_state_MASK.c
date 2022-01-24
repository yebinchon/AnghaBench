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
struct mlx4_dev_persistent {int interface_state; int /*<<< orphan*/  interface_state_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int MLX4_INTERFACE_STATE_DELETION ; 
 int MLX4_INTERFACE_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev_persistent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx4_dev_persistent *persist)
{
	int err = 0;

	FUNC0(persist);
	FUNC3(&persist->interface_state_mutex);
	if (persist->interface_state & MLX4_INTERFACE_STATE_UP &&
	    !(persist->interface_state & MLX4_INTERFACE_STATE_DELETION)) {
		err = FUNC2(persist->pdev);
		FUNC1(persist->dev, "mlx4_restart_one was ended, ret=%d\n",
			  err);
	}
	FUNC4(&persist->interface_state_mutex);
}