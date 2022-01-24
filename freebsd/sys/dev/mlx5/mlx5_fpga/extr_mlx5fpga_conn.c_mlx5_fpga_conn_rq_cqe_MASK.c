#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_fpga_dma_buf {TYPE_3__* sg; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  cc; struct mlx5_fpga_dma_buf** bufs; } ;
struct TYPE_5__ {int active; TYPE_1__ rq; } ;
struct mlx5_fpga_conn {int /*<<< orphan*/  fdev; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* recv_cb ) (int /*<<< orphan*/ ,struct mlx5_fpga_dma_buf*) ;TYPE_2__ qp; int /*<<< orphan*/  fpga_qpn; } ;
struct mlx5_cqe64 {int /*<<< orphan*/  byte_cnt; int /*<<< orphan*/  wqe_counter; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CQE_SYNDROME_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  MLX5_FPGA_RECV_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_dma_buf*) ; 
 int FUNC3 (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct mlx5_fpga_dma_buf*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mlx5_fpga_dma_buf*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct mlx5_fpga_conn *conn,
				  struct mlx5_cqe64 *cqe, u8 status)
{
	struct mlx5_fpga_dma_buf *buf;
	int ix, err;

	ix = FUNC0(cqe->wqe_counter) & (conn->qp.rq.size - 1);
	buf = conn->qp.rq.bufs[ix];
	conn->qp.rq.bufs[ix] = NULL;
	if (!status)
		buf->sg[0].size = FUNC1(cqe->byte_cnt);
	conn->qp.rq.cc++;

	if (FUNC8(status && (status != MLX5_CQE_SYNDROME_WR_FLUSH_ERR)))
		FUNC6(conn->fdev, "RQ buf %p on FPGA QP %u completion status %d\n",
			       buf, conn->fpga_qpn, status);
	else
		FUNC5(conn->fdev, "RQ buf %p on FPGA QP %u completion status %d\n",
			      buf, conn->fpga_qpn, status);

	FUNC4(conn, buf);

	if (FUNC8(status || !conn->qp.active)) {
		conn->qp.active = false;
		FUNC2(buf);
		return;
	}

	FUNC5(conn->fdev, "Message with %u bytes received successfully\n",
		      buf->sg[0].size);
	conn->recv_cb(conn->cb_arg, buf);

	buf->sg[0].size = MLX5_FPGA_RECV_SIZE;
	err = FUNC3(conn, buf);
	if (FUNC8(err)) {
		FUNC6(conn->fdev,
			       "Failed to re-post recv buf: %d\n", err);
		FUNC2(buf);
	}
}