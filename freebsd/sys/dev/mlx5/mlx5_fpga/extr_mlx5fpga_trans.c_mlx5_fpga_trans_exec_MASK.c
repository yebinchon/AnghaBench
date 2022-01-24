#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  complete; TYPE_1__* sg; } ;
typedef  TYPE_2__ u32 ;
struct mlx5_fpga_transaction {int size; scalar_t__ direction; TYPE_2__* data; int /*<<< orphan*/  addr; int /*<<< orphan*/  complete1; struct mlx5_fpga_conn* conn; } ;
struct mlx5_fpga_trans_priv {int tid; TYPE_2__ buf; int /*<<< orphan*/  state; TYPE_2__* header; struct mlx5_fpga_transaction const* user_trans; } ;
struct mlx5_fpga_conn {TYPE_3__* fdev; } ;
struct TYPE_13__ {int /*<<< orphan*/  shell_conn; } ;
struct TYPE_11__ {int size; TYPE_2__* data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_READ ; 
 int MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_WRITE ; 
 scalar_t__ MLX5_FPGA_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_STATE_SEND ; 
 int /*<<< orphan*/  address ; 
 struct mlx5_fpga_trans_priv* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  fpga_shell_qp_packet ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct mlx5_fpga_trans_priv*) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  tid ; 
 int /*<<< orphan*/  trans_send_complete ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  type ; 

int FUNC8(const struct mlx5_fpga_transaction *trans)
{
	struct mlx5_fpga_conn *conn = trans->conn;
	struct mlx5_fpga_trans_priv *trans_priv;
	u32 *header;
	int err;

	if (!trans->complete1) {
		FUNC6(conn->fdev, "Transaction must have a completion callback\n");
		err = -EINVAL;
		goto out;
	}

	err = FUNC7(conn->fdev, trans->addr, trans->size);
	if (err)
		goto out;

	trans_priv = FUNC2(conn->fdev);
	if (!trans_priv) {
		err = -EBUSY;
		goto out;
	}
	trans_priv->user_trans = trans;
	header = trans_priv->header;

	FUNC4(header, 0, sizeof(trans_priv->header));
	FUNC4(&trans_priv->buf, 0, sizeof(trans_priv->buf));
	FUNC0(fpga_shell_qp_packet, header, type,
		 (trans->direction == MLX5_FPGA_WRITE) ?
		 MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_WRITE :
		 MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_READ);
	FUNC0(fpga_shell_qp_packet, header, tid, trans_priv->tid);
	FUNC0(fpga_shell_qp_packet, header, len, trans->size);
	FUNC1(fpga_shell_qp_packet, header, address, trans->addr);

	trans_priv->buf.sg[0].data = header;
	trans_priv->buf.sg[0].size = sizeof(trans_priv->header);
	if (trans->direction == MLX5_FPGA_WRITE) {
		trans_priv->buf.sg[1].data = trans->data;
		trans_priv->buf.sg[1].size = trans->size;
	}

	trans_priv->buf.complete = trans_send_complete;
	trans_priv->state = TRANS_STATE_SEND;

#ifdef NOT_YET
	/* XXXKIB */
	err = mlx5_fpga_conn_send(conn->fdev->shell_conn, &trans_priv->buf);
#else
	err = 0;
#endif
	if (err)
		goto out_buf_tid;
	goto out;

out_buf_tid:
	FUNC3(conn->fdev, trans_priv);
out:
	return err;
}