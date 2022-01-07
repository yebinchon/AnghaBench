
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_usercommand {int mu_datasize; int mu_bufptr; scalar_t__ mu_status; int * mu_command; struct mlx_enquiry2* mu_buf; } ;
struct mlx_enquiry2 {int dummy; } ;


 int MLX_CMD_ENQUIRY2 ;
 int mlx_command ;
 int mlx_perform (int,int ,void*) ;

int
mlx_enquiry(int unit, struct mlx_enquiry2 *enq)
{
    struct mlx_usercommand cmd;


    cmd.mu_datasize = sizeof(*enq);
    cmd.mu_buf = enq;
    cmd.mu_bufptr = 8;
    cmd.mu_command[0] = MLX_CMD_ENQUIRY2;


    mlx_perform(unit, mlx_command, (void *)&cmd);

    return(cmd.mu_status != 0);
}
