
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_qp_table {int lock; int tree; } ;
struct mlx5_core_rsc_common {int refcount; } ;
struct TYPE_2__ {struct mlx5_qp_table qp_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int atomic_inc (int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;
 struct mlx5_core_rsc_common* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct mlx5_core_rsc_common *mlx5_get_rsc(struct mlx5_core_dev *dev,
       u32 rsn)
{
 struct mlx5_qp_table *table = &dev->priv.qp_table;
 struct mlx5_core_rsc_common *common;

 spin_lock(&table->lock);

 common = radix_tree_lookup(&table->tree, rsn);
 if (common)
  atomic_inc(&common->refcount);

 spin_unlock(&table->lock);

 if (!common) {
  mlx5_core_warn(dev, "Async event for bogus resource 0x%x\n",
          rsn);
  return ((void*)0);
 }
 return common;
}
