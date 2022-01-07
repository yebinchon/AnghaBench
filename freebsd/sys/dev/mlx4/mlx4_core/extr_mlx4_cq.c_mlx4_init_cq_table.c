
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reserved_cqs; scalar_t__ num_cqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_table {int bitmap; int tree; int lock; } ;
struct TYPE_4__ {struct mlx4_cq_table cq_table; } ;


 int GFP_ATOMIC ;
 int INIT_RADIX_TREE (int *,int ) ;
 int mlx4_bitmap_init (int *,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int spin_lock_init (int *) ;

int mlx4_init_cq_table(struct mlx4_dev *dev)
{
 struct mlx4_cq_table *cq_table = &mlx4_priv(dev)->cq_table;
 int err;

 spin_lock_init(&cq_table->lock);
 INIT_RADIX_TREE(&cq_table->tree, GFP_ATOMIC);
 if (mlx4_is_slave(dev))
  return 0;

 err = mlx4_bitmap_init(&cq_table->bitmap, dev->caps.num_cqs,
          dev->caps.num_cqs - 1, dev->caps.reserved_cqs, 0);
 if (err)
  return err;

 return 0;
}
