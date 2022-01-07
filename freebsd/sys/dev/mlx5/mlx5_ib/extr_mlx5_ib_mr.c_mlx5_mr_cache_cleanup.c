
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stopped; int wq; } ;
struct mlx5_ib_dev {int delay_timer; TYPE_1__ cache; } ;


 int MAX_MR_CACHE_ENTRIES ;
 int clean_keys (struct mlx5_ib_dev*,int) ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;

int mlx5_mr_cache_cleanup(struct mlx5_ib_dev *dev)
{
 int i;

 dev->cache.stopped = 1;
 flush_workqueue(dev->cache.wq);

 for (i = 0; i < MAX_MR_CACHE_ENTRIES; i++)
  clean_keys(dev, i);

 destroy_workqueue(dev->cache.wq);
 del_timer_sync(&dev->delay_timer);

 return 0;
}
