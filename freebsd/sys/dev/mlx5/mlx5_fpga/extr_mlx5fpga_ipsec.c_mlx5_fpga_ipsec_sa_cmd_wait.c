
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ipsec_command_context {scalar_t__ status; int status_code; int dev; int complete; } ;


 int EINTR ;
 int EIO ;
 scalar_t__ MLX5_FPGA_IPSEC_SACMD_COMPLETE ;
 int kfree (struct mlx5_ipsec_command_context*) ;
 int mlx5_fpga_warn (int ,char*) ;
 int wait_for_completion (int *) ;

int mlx5_fpga_ipsec_sa_cmd_wait(void *ctx)
{
 struct mlx5_ipsec_command_context *context = ctx;
 int res;

 res = wait_for_completion (&context->complete);
 if (res) {
  mlx5_fpga_warn(context->dev, "Failure waiting for IPSec command response\n");
  return -EINTR;
 }

 if (context->status == MLX5_FPGA_IPSEC_SACMD_COMPLETE)
  res = context->status_code;
 else
  res = -EIO;

 kfree(context);
 return res;
}
