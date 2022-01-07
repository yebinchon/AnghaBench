
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pg_wq; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int destroy_workqueue (int ) ;

void mlx5_pagealloc_stop(struct mlx5_core_dev *dev)
{
 destroy_workqueue(dev->priv.pg_wq);
}
