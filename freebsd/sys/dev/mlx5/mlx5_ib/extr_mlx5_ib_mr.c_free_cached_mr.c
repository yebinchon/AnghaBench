
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_mr_cache {int wq; struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_mr {int list; int order; } ;
struct mlx5_ib_dev {struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int cur; int limit; int work; int lock; int head; } ;


 int MAX_MR_CACHE_ENTRIES ;
 int list_add_tail (int *,int *) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ,int) ;
 int order2idx (struct mlx5_ib_dev*,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void free_cached_mr(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
 struct mlx5_mr_cache *cache = &dev->cache;
 struct mlx5_cache_ent *ent;
 int shrink = 0;
 int c;

 c = order2idx(dev, mr->order);
 if (c < 0 || c >= MAX_MR_CACHE_ENTRIES) {
  mlx5_ib_warn(dev, "order %d, cache index %d\n", mr->order, c);
  return;
 }
 ent = &cache->ent[c];
 spin_lock_irq(&ent->lock);
 list_add_tail(&mr->list, &ent->head);
 ent->cur++;
 if (ent->cur > 2 * ent->limit)
  shrink = 1;
 spin_unlock_irq(&ent->lock);

 if (shrink)
  queue_work(cache->wq, &ent->work);
}
