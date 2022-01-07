
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd_layout {int dummy; } ;
struct mlx5_cmd {int log_stride; struct mlx5_cmd_layout* cmd_buf; } ;



__attribute__((used)) static struct mlx5_cmd_layout *get_inst(struct mlx5_cmd *cmd, int idx)
{
 return cmd->cmd_buf + (idx << cmd->log_stride);
}
