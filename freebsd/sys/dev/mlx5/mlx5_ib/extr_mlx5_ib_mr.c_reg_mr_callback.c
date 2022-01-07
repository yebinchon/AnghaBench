
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_mr_table {int lock; int tree; } ;
struct mlx5_mr_cache {scalar_t__ last_add; struct mlx5_cache_ent* ent; } ;
struct TYPE_6__ {int key; } ;
struct mlx5_ib_mr {TYPE_3__ mmkey; int list; int out; int order; struct mlx5_ib_dev* dev; } ;
struct mlx5_ib_dev {int fill_delay; TYPE_2__* mdev; int delay_timer; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int lock; int size; int cur; int head; int pending; } ;
struct TYPE_4__ {int mkey_lock; int mkey_key; struct mlx5_mr_table mr_table; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;


 scalar_t__ HZ ;
 int MLX5_GET (int ,int ,int ) ;
 int create_mkey_out ;
 scalar_t__ jiffies ;
 int kfree (struct mlx5_ib_mr*) ;
 int list_add_tail (int *,int *) ;
 int mkey_index ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int) ;
 int mlx5_idx_to_mkey (int ) ;
 int mlx5_mkey_to_idx (int) ;
 int mod_timer (int *,scalar_t__) ;
 int order2idx (struct mlx5_ib_dev*,int ) ;
 int pr_err (char*,int) ;
 int radix_tree_insert (int *,int ,TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void reg_mr_callback(int status, void *context)
{
 struct mlx5_ib_mr *mr = context;
 struct mlx5_ib_dev *dev = mr->dev;
 struct mlx5_mr_cache *cache = &dev->cache;
 int c = order2idx(dev, mr->order);
 struct mlx5_cache_ent *ent = &cache->ent[c];
 u8 key;
 unsigned long flags;
 struct mlx5_mr_table *table = &dev->mdev->priv.mr_table;
 int err;

 spin_lock_irqsave(&ent->lock, flags);
 ent->pending--;
 spin_unlock_irqrestore(&ent->lock, flags);
 if (status) {
  mlx5_ib_warn(dev, "async reg mr failed. status %d\n", status);
  kfree(mr);
  dev->fill_delay = 1;
  mod_timer(&dev->delay_timer, jiffies + HZ);
  return;
 }

 spin_lock_irqsave(&dev->mdev->priv.mkey_lock, flags);
 key = dev->mdev->priv.mkey_key++;
 spin_unlock_irqrestore(&dev->mdev->priv.mkey_lock, flags);
 mr->mmkey.key = mlx5_idx_to_mkey(MLX5_GET(create_mkey_out, mr->out, mkey_index)) | key;

 cache->last_add = jiffies;

 spin_lock_irqsave(&ent->lock, flags);
 list_add_tail(&mr->list, &ent->head);
 ent->cur++;
 ent->size++;
 spin_unlock_irqrestore(&ent->lock, flags);

 spin_lock_irqsave(&table->lock, flags);
 err = radix_tree_insert(&table->tree, mlx5_mkey_to_idx(mr->mmkey.key),
    &mr->mmkey);
 if (err)
  pr_err("Error inserting to mkey tree. 0x%x\n", -err);
 spin_unlock_irqrestore(&table->lock, flags);
}
