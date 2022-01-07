
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_MAP_EQ ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static int mlx4_MAP_EQ(struct mlx4_dev *dev, u64 event_mask, int unmap,
   int eq_num)
{
 return mlx4_cmd(dev, event_mask, (unmap << 31) | eq_num,
   0, MLX4_CMD_MAP_EQ, MLX4_CMD_TIME_CLASS_B,
   MLX4_CMD_WRAPPED);
}
