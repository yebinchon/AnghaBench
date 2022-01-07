
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_qp_table {int lock; int tree; } ;
struct mlx5_core_rsc_common {int dummy; } ;
struct TYPE_3__ {int free; } ;
struct mlx5_core_qp {int qpn; TYPE_1__ common; } ;
struct TYPE_4__ {struct mlx5_qp_table qp_table; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;


 int mlx5_core_put_rsc (struct mlx5_core_rsc_common*) ;
 int radix_tree_delete (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void destroy_qprqsq_common(struct mlx5_core_dev *dev,
      struct mlx5_core_qp *qp, int rsc_type)
{
 struct mlx5_qp_table *table = &dev->priv.qp_table;
 unsigned long flags;

 spin_lock_irqsave(&table->lock, flags);
 radix_tree_delete(&table->tree, qp->qpn | (rsc_type << 24));
 spin_unlock_irqrestore(&table->lock, flags);

 mlx5_core_put_rsc((struct mlx5_core_rsc_common *)qp);
 wait_for_completion(&qp->common.free);
}
