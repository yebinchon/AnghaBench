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
struct mlx5_fpga_device {int /*<<< orphan*/  mdev; } ;
struct TYPE_2__ {int active; } ;
struct mlx5_fpga_conn {int /*<<< orphan*/  fpga_qpc; int /*<<< orphan*/  fpga_qpn; struct mlx5_fpga_device* fdev; TYPE_1__ qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_FPGA_QPC_STATE ; 
 int /*<<< orphan*/  MLX5_FPGA_QPC_STATE_ACTIVE ; 
 int /*<<< orphan*/  MLX5_FPGA_QPC_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpga_qpc ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_conn*) ; 
 int FUNC2 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_conn*) ; 
 int FUNC4 (struct mlx5_fpga_conn*) ; 
 int FUNC5 (struct mlx5_fpga_conn*) ; 
 int FUNC6 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fpga_device*,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state ; 

__attribute__((used)) static int FUNC9(struct mlx5_fpga_conn *conn)
{
	struct mlx5_fpga_device *fdev = conn->fdev;
	int err;

	FUNC0(fpga_qpc, conn->fpga_qpc, state, MLX5_FPGA_QPC_STATE_ACTIVE);
	err = FUNC8(conn->fdev->mdev, conn->fpga_qpn,
				  MLX5_FPGA_QPC_STATE, &conn->fpga_qpc);
	if (err) {
		FUNC7(fdev, "Failed to activate FPGA RC QP: %d\n", err);
		goto out;
	}

	err = FUNC4(conn);
	if (err) {
		FUNC7(fdev, "Failed to change QP state to reset\n");
		goto err_fpga_qp;
	}

	err = FUNC2(conn);
	if (err) {
		FUNC7(fdev, "Failed to modify QP from RESET to INIT\n");
		goto err_fpga_qp;
	}
	conn->qp.active = true;

	while (!FUNC3(conn))
		;

	err = FUNC5(conn);
	if (err) {
		FUNC7(fdev, "Failed to change QP state from INIT to RTR\n");
		goto err_recv_bufs;
	}

	err = FUNC6(conn);
	if (err) {
		FUNC7(fdev, "Failed to change QP state from RTR to RTS\n");
		goto err_recv_bufs;
	}
	goto out;

err_recv_bufs:
	FUNC1(conn);
err_fpga_qp:
	FUNC0(fpga_qpc, conn->fpga_qpc, state, MLX5_FPGA_QPC_STATE_INIT);
	if (FUNC8(conn->fdev->mdev, conn->fpga_qpn,
				MLX5_FPGA_QPC_STATE, &conn->fpga_qpc))
		FUNC7(fdev, "Failed to revert FPGA QP to INIT\n");
out:
	return err;
}