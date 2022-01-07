
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uar {int index; int map; int bf_map; } ;
struct mlx5_core_dev {int dummy; } ;


 int io_mapping_unmap (int ) ;
 int iounmap (int ) ;
 int mlx5_cmd_free_uar (struct mlx5_core_dev*,int ) ;

void mlx5_unmap_free_uar(struct mlx5_core_dev *mdev, struct mlx5_uar *uar)
{
 io_mapping_unmap(uar->bf_map);
 iounmap(uar->map);
 mlx5_cmd_free_uar(mdev, uar->index);
}
