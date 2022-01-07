
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_mr_cache {int wq; struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_dev {TYPE_3__* mdev; int delay_timer; int slow_path_mutex; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int order; int limit; int work; int dwork; struct mlx5_ib_dev* dev; int lock; int head; } ;
struct TYPE_6__ {TYPE_2__* profile; } ;
struct TYPE_5__ {int mask; TYPE_1__* mr_cache; } ;
struct TYPE_4__ {int limit; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MAX_MR_CACHE_ENTRIES ;
 int MLX5_PROF_MASK_MR_CACHE ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int cache_work_func ;
 int delay_time_func ;
 int delayed_cache_work_func ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;
 int mutex_init (int *) ;
 int queue_work (int ,int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

int mlx5_mr_cache_init(struct mlx5_ib_dev *dev)
{
 struct mlx5_mr_cache *cache = &dev->cache;
 struct mlx5_cache_ent *ent;
 int limit;
 int i;

 mutex_init(&dev->slow_path_mutex);
 cache->wq = alloc_ordered_workqueue("mkey_cache", WQ_MEM_RECLAIM);
 if (!cache->wq) {
  mlx5_ib_warn(dev, "failed to create work queue\n");
  return -ENOMEM;
 }

 setup_timer(&dev->delay_timer, delay_time_func, (unsigned long)dev);
 for (i = 0; i < MAX_MR_CACHE_ENTRIES; i++) {
  INIT_LIST_HEAD(&cache->ent[i].head);
  spin_lock_init(&cache->ent[i].lock);

  ent = &cache->ent[i];
  INIT_LIST_HEAD(&ent->head);
  spin_lock_init(&ent->lock);
  ent->order = i + 2;
  ent->dev = dev;

  if (dev->mdev->profile->mask & MLX5_PROF_MASK_MR_CACHE)
   limit = dev->mdev->profile->mr_cache[i].limit;
  else
   limit = 0;

  INIT_WORK(&ent->work, cache_work_func);
  INIT_DELAYED_WORK(&ent->dwork, delayed_cache_work_func);
  ent->limit = limit;
  queue_work(cache->wq, &ent->work);
 }

 return 0;
}
