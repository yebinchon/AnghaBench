
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_srq_table {int lock; int tree; } ;
struct mlx5_core_srq {int free; int refcount; int (* event ) (struct mlx5_core_srq*,int) ;} ;
struct TYPE_2__ {struct mlx5_srq_table srq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;
 struct mlx5_core_srq* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mlx5_core_srq*,int) ;

void mlx5_srq_event(struct mlx5_core_dev *dev, u32 srqn, int event_type)
{
 struct mlx5_srq_table *table = &dev->priv.srq_table;
 struct mlx5_core_srq *srq;

 spin_lock(&table->lock);

 srq = radix_tree_lookup(&table->tree, srqn);
 if (srq)
  atomic_inc(&srq->refcount);

 spin_unlock(&table->lock);

 if (!srq) {
  mlx5_core_warn(dev, "Async event for bogus SRQ 0x%08x\n", srqn);
  return;
 }

 srq->event(srq, event_type);

 if (atomic_dec_and_test(&srq->refcount))
  complete(&srq->free);
}
