
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_qp_table {int tree; int lock; } ;
struct TYPE_2__ {struct mlx5_qp_table qp_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int GFP_ATOMIC ;
 int INIT_RADIX_TREE (int *,int ) ;
 int memset (struct mlx5_qp_table*,int ,int) ;
 int spin_lock_init (int *) ;

void mlx5_init_qp_table(struct mlx5_core_dev *dev)
{
 struct mlx5_qp_table *table = &dev->priv.qp_table;

 memset(table, 0, sizeof(*table));
 spin_lock_init(&table->lock);
 INIT_RADIX_TREE(&table->tree, GFP_ATOMIC);
}
