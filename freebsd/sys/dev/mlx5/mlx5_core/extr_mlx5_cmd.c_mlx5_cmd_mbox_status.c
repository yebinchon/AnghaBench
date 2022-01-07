
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLX5_GET (int ,void*,int *) ;
 int mbox_out ;

void mlx5_cmd_mbox_status(void *out, u8 *status, u32 *syndrome)
{
 *status = MLX5_GET(mbox_out, out, status);
 *syndrome = MLX5_GET(mbox_out, out, syndrome);
}
