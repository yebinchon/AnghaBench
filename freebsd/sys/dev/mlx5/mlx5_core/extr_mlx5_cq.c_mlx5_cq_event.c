
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_cq_table {int lock; int tree; } ;
struct TYPE_2__ {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct mlx5_core_cq {int free; int refcount; int (* event ) (struct mlx5_core_cq*,int) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;
 struct mlx5_core_cq* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mlx5_core_cq*,int) ;

void mlx5_cq_event(struct mlx5_core_dev *dev, u32 cqn, int event_type)
{
 struct mlx5_cq_table *table = &dev->priv.cq_table;
 struct mlx5_core_cq *cq;

 spin_lock(&table->lock);

 cq = radix_tree_lookup(&table->tree, cqn);
 if (cq)
  atomic_inc(&cq->refcount);

 spin_unlock(&table->lock);

 if (!cq) {
  mlx5_core_warn(dev, "Async event for bogus CQ 0x%x\n", cqn);
  return;
 }

 cq->event(cq, event_type);

 if (atomic_dec_and_test(&cq->refcount))
  complete(&cq->free);
}
