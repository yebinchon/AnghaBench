
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_usercommand {int mu_datasize; int mu_bufptr; scalar_t__ mu_status; int * mu_command; struct mlx_core_cfg* mu_buf; } ;
struct mlx_core_cfg {int dummy; } ;


 int MLX_CMD_READ_CONFIG ;
 int mlx_command ;
 int mlx_perform (int,int ,void*) ;

int
mlx_read_configuration(int unit, struct mlx_core_cfg *cfg)
{
    struct mlx_usercommand cmd;


    cmd.mu_datasize = sizeof(*cfg);
    cmd.mu_buf = cfg;
    cmd.mu_bufptr = 8;
    cmd.mu_command[0] = MLX_CMD_READ_CONFIG;


    mlx_perform(unit, mlx_command, (void *)&cmd);

    return(cmd.mu_status != 0);
}
