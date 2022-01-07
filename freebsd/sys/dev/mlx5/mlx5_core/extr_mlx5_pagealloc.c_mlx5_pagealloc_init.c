
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_root; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int RB_ROOT ;

void mlx5_pagealloc_init(struct mlx5_core_dev *dev)
{

 dev->priv.page_root = RB_ROOT;
}
