
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_usercommand {int mu_datasize; int mu_bufptr; int* mu_command; scalar_t__ mu_status; struct mlx_phys_drv* mu_buf; } ;
struct mlx_phys_drv {int dummy; } ;


 int MLX_CMD_DEVICE_STATE ;
 int mlx_command ;
 int mlx_perform (int,int ,void*) ;

int
mlx_get_device_state(int unit, int channel, int target, struct mlx_phys_drv *drv)
{
    struct mlx_usercommand cmd;


    cmd.mu_datasize = sizeof(*drv);
    cmd.mu_buf = drv;
    cmd.mu_bufptr = 8;
    cmd.mu_command[0] = MLX_CMD_DEVICE_STATE;
    cmd.mu_command[2] = channel;
    cmd.mu_command[3] = target;


    mlx_perform(unit, mlx_command, (void *)&cmd);

    return(cmd.mu_status != 0);
}
