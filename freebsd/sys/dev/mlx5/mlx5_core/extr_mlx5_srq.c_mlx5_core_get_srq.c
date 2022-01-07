
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_srq_table {int lock; int tree; } ;
struct mlx5_core_srq {int refcount; } ;
struct TYPE_2__ {struct mlx5_srq_table srq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int atomic_inc (int *) ;
 struct mlx5_core_srq* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct mlx5_core_srq *mlx5_core_get_srq(struct mlx5_core_dev *dev, u32 srqn)
{
 struct mlx5_srq_table *table = &dev->priv.srq_table;
 struct mlx5_core_srq *srq;

 spin_lock(&table->lock);

 srq = radix_tree_lookup(&table->tree, srqn);
 if (srq)
  atomic_inc(&srq->refcount);

 spin_unlock(&table->lock);

 return srq;
}
