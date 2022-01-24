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
struct mlx5_wqe_data_seg {int /*<<< orphan*/  addr; void* lkey; void* byte_count; } ;
struct mlx5_wqe_ctrl_seg {void* qpn_ds; void* opmod_idx_opcode; int /*<<< orphan*/  fm_ce_se; scalar_t__ imm; } ;
struct mlx5_fpga_dma_buf {TYPE_8__* sg; } ;
struct TYPE_14__ {int pc; int size; struct mlx5_fpga_dma_buf** bufs; } ;
struct TYPE_13__ {int qpn; } ;
struct TYPE_9__ {int /*<<< orphan*/  sq; } ;
struct TYPE_15__ {TYPE_6__ sq; TYPE_5__ mqp; TYPE_1__ wq; } ;
struct mlx5_fpga_conn {TYPE_7__ qp; TYPE_4__* fdev; } ;
struct TYPE_16__ {int size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int key; } ;
struct TYPE_11__ {TYPE_2__ mkey; } ;
struct TYPE_12__ {TYPE_3__ conn_res; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_8__*) ; 
 int MLX5_OPCODE_SEND ; 
 int /*<<< orphan*/  MLX5_WQE_CTRL_CQ_UPDATE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_conn*,struct mlx5_wqe_ctrl_seg*) ; 
 struct mlx5_wqe_ctrl_seg* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct mlx5_fpga_conn *conn,
				     struct mlx5_fpga_dma_buf *buf)
{
	struct mlx5_wqe_ctrl_seg *ctrl;
	struct mlx5_wqe_data_seg *data;
	unsigned int ix, sgi;
	int size = 1;

	ix = conn->qp.sq.pc & (conn->qp.sq.size - 1);

	ctrl = FUNC4(&conn->qp.wq.sq, ix);
	data = (void *)(ctrl + 1);

	for (sgi = 0; sgi < FUNC0(buf->sg); sgi++) {
		if (!buf->sg[sgi].data)
			break;
		data->byte_count = FUNC1(buf->sg[sgi].size);
		data->lkey = FUNC1(conn->fdev->conn_res.mkey.key);
		data->addr = FUNC2(buf->sg[sgi].dma_addr);
		data++;
		size++;
	}

	ctrl->imm = 0;
	ctrl->fm_ce_se = MLX5_WQE_CTRL_CQ_UPDATE;
	ctrl->opmod_idx_opcode = FUNC1(((conn->qp.sq.pc & 0xffff) << 8) |
					     MLX5_OPCODE_SEND);
	ctrl->qpn_ds = FUNC1(size | (conn->qp.mqp.qpn << 8));

	conn->qp.sq.pc++;
	conn->qp.sq.bufs[ix] = buf;
	FUNC3(conn, ctrl);
}