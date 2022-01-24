#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  pdn; } ;
struct mlx5_fpga_device {TYPE_1__ conn_res; struct mlx5_core_dev* mdev; } ;
struct TYPE_16__ {int /*<<< orphan*/  qpn; } ;
struct TYPE_12__ {int /*<<< orphan*/  dma; } ;
struct TYPE_13__ {TYPE_4__ db; } ;
struct TYPE_14__ {TYPE_8__ mqp; TYPE_5__ wq_ctrl; } ;
struct TYPE_10__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_11__ {TYPE_2__ mcq; } ;
struct mlx5_fpga_conn {TYPE_6__ qp; TYPE_3__ cq; struct mlx5_fpga_device* fdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  port; int /*<<< orphan*/  pkey_index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_CMD_OP_RST2INIT_QP ; 
 int /*<<< orphan*/  MLX5_FPGA_PKEY_INDEX ; 
 int /*<<< orphan*/  MLX5_FPGA_PORT_NUM ; 
 int /*<<< orphan*/  MLX5_QP_PM_MIGRATED ; 
 int /*<<< orphan*/  MLX5_QP_ST_RC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cqn_rcv ; 
 int /*<<< orphan*/  cqn_snd ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  pm_state ; 
 TYPE_7__ primary_address_path ; 
 int /*<<< orphan*/  st ; 

__attribute__((used)) static inline int FUNC8(struct mlx5_fpga_conn *conn)
{
	struct mlx5_fpga_device *fdev = conn->fdev;
	struct mlx5_core_dev *mdev = fdev->mdev;
	u32 *qpc = NULL;
	int err;

	FUNC6(conn->fdev, "Modifying QP %u to INIT\n", conn->qp.mqp.qpn);

	qpc = FUNC4(FUNC2(qpc), GFP_KERNEL);
	if (!qpc) {
		err = -ENOMEM;
		goto out;
	}

	FUNC0(qpc, qpc, st, MLX5_QP_ST_RC);
	FUNC0(qpc, qpc, pm_state, MLX5_QP_PM_MIGRATED);
	FUNC0(qpc, qpc, primary_address_path.pkey_index, MLX5_FPGA_PKEY_INDEX);
	FUNC0(qpc, qpc, primary_address_path.port, MLX5_FPGA_PORT_NUM);
	FUNC0(qpc, qpc, pd, conn->fdev->conn_res.pdn);
	FUNC0(qpc, qpc, cqn_snd, conn->cq.mcq.cqn);
	FUNC0(qpc, qpc, cqn_rcv, conn->cq.mcq.cqn);
	FUNC1(qpc, qpc, dbr_addr, conn->qp.wq_ctrl.db.dma);

	err = FUNC5(mdev, MLX5_CMD_OP_RST2INIT_QP, 0, qpc,
				  &conn->qp.mqp);
	if (err) {
		FUNC7(fdev, "qp_modify RST2INIT failed: %d\n", err);
		goto out;
	}

out:
	FUNC3(qpc);
	return err;
}