
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ d64; void** d32; } ;
struct mlx5e_sq {int sqn; TYPE_1__ doorbell; } ;


 int MLX5_OPCODE_NOP ;
 void* cpu_to_be32 (int) ;
 int mlx5e_tx_notify_hw (struct mlx5e_sq*,void**,int ) ;

__attribute__((used)) static void
mlx5e_reset_sq_doorbell_record(struct mlx5e_sq *sq)
{

 sq->doorbell.d32[0] = cpu_to_be32(MLX5_OPCODE_NOP);
 sq->doorbell.d32[1] = cpu_to_be32(sq->sqn << 8);
 mlx5e_tx_notify_hw(sq, sq->doorbell.d32, 0);
 sq->doorbell.d64 = 0;
}
