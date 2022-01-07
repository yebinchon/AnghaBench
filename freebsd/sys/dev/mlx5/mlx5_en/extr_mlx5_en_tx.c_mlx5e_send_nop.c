
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct TYPE_9__ {scalar_t__ fm_ce_se; void* qpn_ds; void* opmod_idx_opcode; } ;
struct mlx5e_tx_wqe {TYPE_4__ ctrl; } ;
struct TYPE_6__ {int d32; } ;
struct TYPE_8__ {size_t sz_m1; } ;
struct mlx5e_sq {size_t pc; int sqn; TYPE_2__* mbuf; TYPE_1__ doorbell; TYPE_3__ wq; } ;
struct TYPE_7__ {scalar_t__ num_wqebbs; scalar_t__ num_bytes; int * mbuf; } ;


 scalar_t__ DIV_ROUND_UP (int,int ) ;
 int MLX5_OPCODE_NOP ;
 int MLX5_SEND_WQEBB_NUM_DS ;
 scalar_t__ MLX5_WQE_CTRL_CQ_UPDATE ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,TYPE_4__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 struct mlx5e_tx_wqe* mlx5_wq_cyc_get_wqe (TYPE_3__*,size_t) ;
 scalar_t__ mlx5e_do_send_cqe (struct mlx5e_sq*) ;

void
mlx5e_send_nop(struct mlx5e_sq *sq, u32 ds_cnt)
{
 u16 pi = sq->pc & sq->wq.sz_m1;
 struct mlx5e_tx_wqe *wqe = mlx5_wq_cyc_get_wqe(&sq->wq, pi);

 memset(&wqe->ctrl, 0, sizeof(wqe->ctrl));

 wqe->ctrl.opmod_idx_opcode = cpu_to_be32((sq->pc << 8) | MLX5_OPCODE_NOP);
 wqe->ctrl.qpn_ds = cpu_to_be32((sq->sqn << 8) | ds_cnt);
 if (mlx5e_do_send_cqe(sq))
  wqe->ctrl.fm_ce_se = MLX5_WQE_CTRL_CQ_UPDATE;
 else
  wqe->ctrl.fm_ce_se = 0;


 memcpy(sq->doorbell.d32, &wqe->ctrl, sizeof(sq->doorbell.d32));

 sq->mbuf[pi].mbuf = ((void*)0);
 sq->mbuf[pi].num_bytes = 0;
 sq->mbuf[pi].num_wqebbs = DIV_ROUND_UP(ds_cnt, MLX5_SEND_WQEBB_NUM_DS);
 sq->pc += sq->mbuf[pi].num_wqebbs;
}
