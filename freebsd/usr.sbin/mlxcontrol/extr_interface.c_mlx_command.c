
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_usercommand {int mu_error; } ;


 int MLX_COMMAND ;
 int ioctl (int,int ,struct mlx_usercommand*) ;

void
mlx_command(int fd, void *arg)
{
    struct mlx_usercommand *cmd = (struct mlx_usercommand *)arg;
    int error;

    error = ioctl(fd, MLX_COMMAND, cmd);
    if (error != 0)
 cmd->mu_error = error;
}
