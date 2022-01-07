
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_srq_table {int lock; int tree; } ;
struct mlx5_core_srq {int free; int refcount; int srqn; } ;
struct TYPE_2__ {struct mlx5_srq_table srq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int EINVAL ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int destroy_srq_split (struct mlx5_core_dev*,struct mlx5_core_srq*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;
 struct mlx5_core_srq* radix_tree_delete (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;

int mlx5_core_destroy_srq(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq)
{
 struct mlx5_srq_table *table = &dev->priv.srq_table;
 struct mlx5_core_srq *tmp;
 int err;

 spin_lock_irq(&table->lock);
 tmp = radix_tree_delete(&table->tree, srq->srqn);
 spin_unlock_irq(&table->lock);
 if (!tmp) {
  mlx5_core_warn(dev, "srq 0x%x not found in tree\n", srq->srqn);
  return -EINVAL;
 }
 if (tmp != srq) {
  mlx5_core_warn(dev, "corruption on srqn 0x%x\n", srq->srqn);
  return -EINVAL;
 }

 err = destroy_srq_split(dev, srq);
 if (err)
  return err;

 if (atomic_dec_and_test(&srq->refcount))
  complete(&srq->free);
 wait_for_completion(&srq->free);

 return 0;
}
