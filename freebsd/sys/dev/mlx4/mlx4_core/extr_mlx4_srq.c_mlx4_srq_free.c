
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_srq_table {int lock; int tree; } ;
struct mlx4_srq {int srqn; int free; int refcount; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_srq_table srq_table; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int mlx4_HW2SW_SRQ (struct mlx4_dev*,int *,int ) ;
 TYPE_1__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_srq_free_icm (struct mlx4_dev*,int ) ;
 int mlx4_warn (struct mlx4_dev*,char*,int,int ) ;
 int radix_tree_delete (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;

void mlx4_srq_free(struct mlx4_dev *dev, struct mlx4_srq *srq)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;
 int err;

 err = mlx4_HW2SW_SRQ(dev, ((void*)0), srq->srqn);
 if (err)
  mlx4_warn(dev, "HW2SW_SRQ failed (%d) for SRQN %06x\n", err, srq->srqn);

 spin_lock_irq(&srq_table->lock);
 radix_tree_delete(&srq_table->tree, srq->srqn);
 spin_unlock_irq(&srq_table->lock);

 if (atomic_dec_and_test(&srq->refcount))
  complete(&srq->free);
 wait_for_completion(&srq->free);

 mlx4_srq_free_icm(dev, srq->srqn);
}
