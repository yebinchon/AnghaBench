
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ida; } ;
struct TYPE_4__ {TYPE_1__ reserved_gids; } ;
struct mlx5_core_dev {TYPE_2__ roce; } ;


 int ida_simple_remove (int *,int) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int) ;

void mlx5_core_reserved_gid_free(struct mlx5_core_dev *dev, int gid_index)
{
 mlx5_core_dbg(dev, "Freeing reserved GID %u\n", gid_index);
 ida_simple_remove(&dev->roce.reserved_gids.ida, gid_index);
}
