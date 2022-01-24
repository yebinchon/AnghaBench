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
struct mlx5e_sq {int /*<<< orphan*/  running; int /*<<< orphan*/  cev_next_state; int /*<<< orphan*/  ifp; scalar_t__ pc; scalar_t__ cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_CEV_STATE_INITIAL ; 
 int /*<<< orphan*/  MLX5_SQC_STATE_ERR ; 
 int /*<<< orphan*/  MLX5_SQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_SQC_STATE_RST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct mlx5e_sq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_sq*) ; 

void
FUNC5(struct mlx5e_sq *sq)
{
	int err;

	/* check if already enabled */
	if (FUNC0(sq->running) != 0)
		return;

	err = FUNC3(sq, MLX5_SQC_STATE_ERR,
	    MLX5_SQC_STATE_RST);
	if (err != 0) {
		FUNC2(sq->ifp,
		    "mlx5e_modify_sq() from ERR to RST failed: %d\n", err);
	}

	sq->cc = 0;
	sq->pc = 0;

	/* reset doorbell prior to moving from RST to RDY */
	FUNC4(sq);

	err = FUNC3(sq, MLX5_SQC_STATE_RST,
	    MLX5_SQC_STATE_RDY);
	if (err != 0) {
		FUNC2(sq->ifp,
		    "mlx5e_modify_sq() from RST to RDY failed: %d\n", err);
	}

	sq->cev_next_state = MLX5E_CEV_STATE_INITIAL;
	FUNC1(sq->running, 1);
}