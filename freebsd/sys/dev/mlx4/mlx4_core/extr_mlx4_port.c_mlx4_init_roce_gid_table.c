
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_roce_gid_table {TYPE_1__* roce_gids; int mutex; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {int raw; } ;


 int MLX4_ROCE_GID_ENTRY_SIZE ;
 int MLX4_ROCE_MAX_GIDS ;
 int memset (int ,int ,int ) ;
 int mutex_init (int *) ;

void mlx4_init_roce_gid_table(struct mlx4_dev *dev,
         struct mlx4_roce_gid_table *table)
{
 int i;

 mutex_init(&table->mutex);
 for (i = 0; i < MLX4_ROCE_MAX_GIDS; i++)
  memset(table->roce_gids[i].raw, 0, MLX4_ROCE_GID_ENTRY_SIZE);
}
