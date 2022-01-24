#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_fpga_device {TYPE_1__* ipsec; } ;
struct mlx5_fpga_conn_attr {struct mlx5_fpga_device* cb_arg; int /*<<< orphan*/  recv_cb; void* tx_size; void* rx_size; int /*<<< orphan*/  member_0; } ;
struct mlx5_fpga_conn {int dummy; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_3__ {struct mlx5_fpga_conn* conn; int /*<<< orphan*/  pending_cmds_lock; int /*<<< orphan*/  pending_cmds; int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx5_fpga_conn*) ; 
 int FUNC2 (struct mlx5_fpga_conn*) ; 
 void* SBU_QP_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_device*,char*,int) ; 
 int FUNC6 (struct mlx5_fpga_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_fpga_ipsec_recv ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*) ; 
 struct mlx5_fpga_conn* FUNC8 (struct mlx5_fpga_device*,struct mlx5_fpga_conn_attr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct mlx5_core_dev *mdev)
{
	struct mlx5_fpga_conn_attr init_attr = {0};
	struct mlx5_fpga_device *fdev = mdev->fpga;
	struct mlx5_fpga_conn *conn;
	int err;

	if (!FUNC7(mdev))
		return 0;

	fdev->ipsec = FUNC4(sizeof(*fdev->ipsec), GFP_KERNEL);
	if (!fdev->ipsec)
		return -ENOMEM;

	err = FUNC6(fdev, sizeof(fdev->ipsec->caps),
				     fdev->ipsec->caps);
	if (err) {
		FUNC5(fdev, "Failed to retrieve IPSec extended capabilities: %d\n",
			      err);
		goto error;
	}

	FUNC0(&fdev->ipsec->pending_cmds);
	FUNC9(&fdev->ipsec->pending_cmds_lock);

	init_attr.rx_size = SBU_QP_QUEUE_SIZE;
	init_attr.tx_size = SBU_QP_QUEUE_SIZE;
	init_attr.recv_cb = mlx5_fpga_ipsec_recv;
	init_attr.cb_arg = fdev;
	conn = FUNC8(fdev, &init_attr);
	if (FUNC1(conn)) {
		err = FUNC2(conn);
		FUNC5(fdev, "Error creating IPSec command connection %d\n",
			      err);
		goto error;
	}
	fdev->ipsec->conn = conn;
	return 0;

error:
	FUNC3(fdev->ipsec);
	fdev->ipsec = NULL;
	return err;
}