
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int prev; } ;
struct TYPE_3__ {scalar_t__ active; } ;
struct mlx5_flow_table {TYPE_2__ fgs; TYPE_1__ autogroup; int base; } ;
struct mlx5_flow_group {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENODEV ;
 int EPERM ;
 struct mlx5_flow_group* ERR_PTR (int ) ;
 struct mlx5_flow_group* fs_create_fg (struct mlx5_core_dev*,struct mlx5_flow_table*,int ,int *,int) ;
 struct mlx5_core_dev* fs_get_dev (int *) ;

struct mlx5_flow_group *mlx5_create_flow_group(struct mlx5_flow_table *ft,
            u32 *in)
{
 struct mlx5_flow_group *fg;
 struct mlx5_core_dev *dev = fs_get_dev(&ft->base);

 if (!dev)
  return ERR_PTR(-ENODEV);

 if (ft->autogroup.active)
  return ERR_PTR(-EPERM);

 fg = fs_create_fg(dev, ft, ft->fgs.prev, in, 1);

 return fg;
}
