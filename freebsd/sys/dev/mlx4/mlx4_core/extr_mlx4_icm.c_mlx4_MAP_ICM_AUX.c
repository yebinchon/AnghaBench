
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_icm {int dummy; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_MAP_ICM_AUX ;
 int mlx4_map_cmd (struct mlx4_dev*,int ,struct mlx4_icm*,int) ;

int mlx4_MAP_ICM_AUX(struct mlx4_dev *dev, struct mlx4_icm *icm)
{
 return mlx4_map_cmd(dev, MLX4_CMD_MAP_ICM_AUX, icm, -1);
}
