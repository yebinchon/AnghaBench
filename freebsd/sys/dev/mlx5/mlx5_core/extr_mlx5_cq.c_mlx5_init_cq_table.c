
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_cq_table {int tree; TYPE_2__* linear_array; int lock; } ;
struct TYPE_3__ {struct mlx5_cq_table cq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_4__ {int lock; } ;


 int GFP_ATOMIC ;
 int INIT_RADIX_TREE (int *,int ) ;
 int MLX5_CQ_LINEAR_ARRAY_SIZE ;
 int memset (struct mlx5_cq_table*,int ,int) ;
 int spin_lock_init (int *) ;

int mlx5_init_cq_table(struct mlx5_core_dev *dev)
{
 struct mlx5_cq_table *table = &dev->priv.cq_table;
 int err;
 int x;

 memset(table, 0, sizeof(*table));
 spin_lock_init(&table->lock);
 for (x = 0; x != MLX5_CQ_LINEAR_ARRAY_SIZE; x++)
  spin_lock_init(&table->linear_array[x].lock);
 INIT_RADIX_TREE(&table->tree, GFP_ATOMIC);
 err = 0;

 return err;
}
