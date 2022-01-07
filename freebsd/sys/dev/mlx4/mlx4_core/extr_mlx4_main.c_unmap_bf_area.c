
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ bf_mapping; } ;


 int io_mapping_free (scalar_t__) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static void unmap_bf_area(struct mlx4_dev *dev)
{
 if (mlx4_priv(dev)->bf_mapping)
  io_mapping_free(mlx4_priv(dev)->bf_mapping);
}
