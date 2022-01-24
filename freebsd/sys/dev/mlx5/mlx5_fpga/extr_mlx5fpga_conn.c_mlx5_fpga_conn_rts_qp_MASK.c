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
struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mqp; } ;
struct mlx5_fpga_conn {TYPE_1__ qp; int /*<<< orphan*/  fpga_qpc; struct mlx5_fpga_device* fdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ack_timeout; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_CMD_OP_RTR2RTS_QP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_QP_OPTPAR_RNR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fpga_qpc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_ack_req_freq ; 
 int /*<<< orphan*/  min_rnr_nak ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fpga_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  next_rcv_psn ; 
 int /*<<< orphan*/  next_send_psn ; 
 TYPE_2__ primary_address_path ; 
 int /*<<< orphan*/  retry_count ; 
 int /*<<< orphan*/  rnr_retry ; 

__attribute__((used)) static inline int FUNC8(struct mlx5_fpga_conn *conn)
{
	struct mlx5_fpga_device *fdev = conn->fdev;
	struct mlx5_core_dev *mdev = fdev->mdev;
	u32 *qpc = NULL;
	u32 opt_mask;
	int err;

	FUNC6(conn->fdev, "QP RTS\n");

	qpc = FUNC4(FUNC2(qpc), GFP_KERNEL);
	if (!qpc) {
		err = -ENOMEM;
		goto out;
	}

	FUNC1(qpc, qpc, log_ack_req_freq, 8);
	FUNC1(qpc, qpc, min_rnr_nak, 0x12);
	FUNC1(qpc, qpc, primary_address_path.ack_timeout, 0x12); /* ~1.07s */
	FUNC1(qpc, qpc, next_send_psn,
		 FUNC0(fpga_qpc, conn->fpga_qpc, next_rcv_psn));
	FUNC1(qpc, qpc, retry_count, 7);
	FUNC1(qpc, qpc, rnr_retry, 7); /* Infinite retry if RNR NACK */

	opt_mask = MLX5_QP_OPTPAR_RNR_TIMEOUT;
	err = FUNC5(mdev, MLX5_CMD_OP_RTR2RTS_QP, opt_mask, qpc,
				  &conn->qp.mqp);
	if (err) {
		FUNC7(fdev, "qp_modify RST2INIT failed: %d\n", err);
		goto out;
	}

out:
	FUNC3(qpc);
	return err;
}