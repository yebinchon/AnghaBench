
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int MLX5_CMD_MODE_POLLING ;
 int mlx5_cmd_change_mod (struct mlx5_core_dev*,int ) ;

void mlx5_cmd_use_polling(struct mlx5_core_dev *dev)
{
        mlx5_cmd_change_mod(dev, MLX5_CMD_MODE_POLLING);
}
