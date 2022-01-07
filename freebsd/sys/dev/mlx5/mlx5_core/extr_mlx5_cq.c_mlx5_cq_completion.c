
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct mlx5_cq_table {int lock; int tree; struct mlx5_cq_linear_array_entry* linear_array; } ;
struct mlx5_cq_linear_array_entry {int lock; struct mlx5_core_cq* cq; } ;
struct TYPE_2__ {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct mlx5_core_cq {int free; int refcount; int (* comp ) (struct mlx5_core_cq*) ;int arm_sn; } ;


 size_t MLX5_CQ_LINEAR_ARRAY_SIZE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 scalar_t__ likely (struct mlx5_core_cq*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,size_t) ;
 struct mlx5_core_cq* radix_tree_lookup (int *,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mlx5_core_cq*) ;
 int stub2 (struct mlx5_core_cq*) ;

void mlx5_cq_completion(struct mlx5_core_dev *dev, u32 cqn)
{
 struct mlx5_core_cq *cq;
 struct mlx5_cq_table *table = &dev->priv.cq_table;

 if (cqn < MLX5_CQ_LINEAR_ARRAY_SIZE) {
  struct mlx5_cq_linear_array_entry *entry;

  entry = &table->linear_array[cqn];
  spin_lock(&entry->lock);
  cq = entry->cq;
  if (cq == ((void*)0)) {
   mlx5_core_warn(dev,
       "Completion event for bogus CQ 0x%x\n", cqn);
  } else {
   ++cq->arm_sn;
   cq->comp(cq);
  }
  spin_unlock(&entry->lock);
  return;
 }

 spin_lock(&table->lock);
 cq = radix_tree_lookup(&table->tree, cqn);
 if (likely(cq))
  atomic_inc(&cq->refcount);
 spin_unlock(&table->lock);

 if (!cq) {
  mlx5_core_warn(dev, "Completion event for bogus CQ 0x%x\n", cqn);
  return;
 }

 ++cq->arm_sn;

 cq->comp(cq);

 if (atomic_dec_and_test(&cq->refcount))
  complete(&cq->free);
}
