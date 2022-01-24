#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct TYPE_9__ {scalar_t__ fm_ce_se; void* qpn_ds; void* opmod_idx_opcode; } ;
struct mlx5e_tx_wqe {TYPE_4__ ctrl; } ;
struct TYPE_6__ {int /*<<< orphan*/  d32; } ;
struct TYPE_8__ {size_t sz_m1; } ;
struct mlx5e_sq {size_t pc; int sqn; TYPE_2__* mbuf; TYPE_1__ doorbell; TYPE_3__ wq; } ;
struct TYPE_7__ {scalar_t__ num_wqebbs; scalar_t__ num_bytes; int /*<<< orphan*/ * mbuf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MLX5_OPCODE_NOP ; 
 int /*<<< orphan*/  MLX5_SEND_WQEBB_NUM_DS ; 
 scalar_t__ MLX5_WQE_CTRL_CQ_UPDATE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 struct mlx5e_tx_wqe* FUNC4 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC5 (struct mlx5e_sq*) ; 

void
FUNC6(struct mlx5e_sq *sq, u32 ds_cnt)
{
	u16 pi = sq->pc & sq->wq.sz_m1;
	struct mlx5e_tx_wqe *wqe = FUNC4(&sq->wq, pi);

	FUNC3(&wqe->ctrl, 0, sizeof(wqe->ctrl));

	wqe->ctrl.opmod_idx_opcode = FUNC1((sq->pc << 8) | MLX5_OPCODE_NOP);
	wqe->ctrl.qpn_ds = FUNC1((sq->sqn << 8) | ds_cnt);
	if (FUNC5(sq))
		wqe->ctrl.fm_ce_se = MLX5_WQE_CTRL_CQ_UPDATE;
	else
		wqe->ctrl.fm_ce_se = 0;

	/* Copy data for doorbell */
	FUNC2(sq->doorbell.d32, &wqe->ctrl, sizeof(sq->doorbell.d32));

	sq->mbuf[pi].mbuf = NULL;
	sq->mbuf[pi].num_bytes = 0;
	sq->mbuf[pi].num_wqebbs = FUNC0(ds_cnt, MLX5_SEND_WQEBB_NUM_DS);
	sq->pc += sq->mbuf[pi].num_wqebbs;
}