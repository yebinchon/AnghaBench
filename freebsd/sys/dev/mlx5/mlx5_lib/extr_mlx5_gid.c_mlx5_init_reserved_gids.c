
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int start; scalar_t__ count; int ida; } ;
struct TYPE_4__ {TYPE_1__ reserved_gids; } ;
struct mlx5_core_dev {TYPE_2__ roce; } ;


 unsigned int MLX5_CAP_ROCE (struct mlx5_core_dev*,int ) ;
 int ida_init (int *) ;
 int roce_address_table_size ;

void mlx5_init_reserved_gids(struct mlx5_core_dev *dev)
{
 unsigned int tblsz = MLX5_CAP_ROCE(dev, roce_address_table_size);

 ida_init(&dev->roce.reserved_gids.ida);
 dev->roce.reserved_gids.start = tblsz;
 dev->roce.reserved_gids.count = 0;
}
