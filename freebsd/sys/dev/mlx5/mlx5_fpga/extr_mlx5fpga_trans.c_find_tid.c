
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mlx5_fpga_trans_priv {int dummy; } ;
struct mlx5_fpga_device {TYPE_1__* trans; } ;
struct TYPE_2__ {struct mlx5_fpga_trans_priv* transactions; } ;


 size_t MLX5_FPGA_TID_COUNT ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,size_t) ;

__attribute__((used)) static struct mlx5_fpga_trans_priv *find_tid(struct mlx5_fpga_device *fdev,
          u8 tid)
{
 if (tid >= MLX5_FPGA_TID_COUNT) {
  mlx5_fpga_warn(fdev, "Unexpected transaction ID %u\n", tid);
  return ((void*)0);
 }
 return &fdev->trans->transactions[tid];
}
