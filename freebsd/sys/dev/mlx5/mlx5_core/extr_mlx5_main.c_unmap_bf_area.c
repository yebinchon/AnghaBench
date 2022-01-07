
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bf_mapping; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int io_mapping_free (scalar_t__) ;

__attribute__((used)) static void unmap_bf_area(struct mlx5_core_dev *dev)
{
 if (dev->priv.bf_mapping)
  io_mapping_free(dev->priv.bf_mapping);
}
