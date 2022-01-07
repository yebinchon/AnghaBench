
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
typedef int mlx5_cmd_cbk_t ;


 int cmd_exec_helper (struct mlx5_core_dev*,void*,int,void*,int,int ,void*,int) ;

int mlx5_cmd_exec_cb(struct mlx5_core_dev *dev, void *in, int in_size,
       void *out, int out_size, mlx5_cmd_cbk_t callback,
       void *context)
{
 return cmd_exec_helper(dev, in, in_size, out, out_size, callback, context, 0);
}
