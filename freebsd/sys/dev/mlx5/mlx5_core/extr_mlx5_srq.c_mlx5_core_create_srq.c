
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_srq_table {int lock; int tree; } ;
struct mlx5_srq_attr {scalar_t__ type; } ;
struct TYPE_4__ {int res; } ;
struct mlx5_core_srq {int srqn; int free; int refcount; TYPE_2__ common; } ;
struct TYPE_3__ {struct mlx5_srq_table srq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 scalar_t__ IB_SRQT_XRC ;
 int MLX5_RES_SRQ ;
 int MLX5_RES_XSRQ ;
 int atomic_set (int *,int) ;
 int create_srq_split (struct mlx5_core_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ;
 int destroy_srq_split (struct mlx5_core_dev*,struct mlx5_core_srq*) ;
 int init_completion (int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int,int ) ;
 int radix_tree_insert (int *,int ,struct mlx5_core_srq*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int mlx5_core_create_srq(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq,
    struct mlx5_srq_attr *in)
{
 int err;
 struct mlx5_srq_table *table = &dev->priv.srq_table;

 if (in->type == IB_SRQT_XRC)
  srq->common.res = MLX5_RES_XSRQ;
 else
  srq->common.res = MLX5_RES_SRQ;

 err = create_srq_split(dev, srq, in);
 if (err)
  return err;

 atomic_set(&srq->refcount, 1);
 init_completion(&srq->free);

 spin_lock_irq(&table->lock);
 err = radix_tree_insert(&table->tree, srq->srqn, srq);
 spin_unlock_irq(&table->lock);
 if (err) {
  mlx5_core_warn(dev, "err %d, srqn 0x%x\n", err, srq->srqn);
  goto err_destroy_srq_split;
 }

 return 0;

err_destroy_srq_split:
 destroy_srq_split(dev, srq);

 return err;
}
