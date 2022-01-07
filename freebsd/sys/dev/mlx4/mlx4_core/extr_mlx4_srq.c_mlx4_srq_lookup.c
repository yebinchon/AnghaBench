
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx4_srq_table {int tree; } ;
struct mlx4_srq {int dummy; } ;
struct TYPE_3__ {int num_srqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {struct mlx4_srq_table srq_table; } ;


 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 struct mlx4_srq* radix_tree_lookup (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct mlx4_srq *mlx4_srq_lookup(struct mlx4_dev *dev, u32 srqn)
{
 struct mlx4_srq_table *srq_table = &mlx4_priv(dev)->srq_table;
 struct mlx4_srq *srq;

 rcu_read_lock();
 srq = radix_tree_lookup(&srq_table->tree,
    srqn & (dev->caps.num_srqs - 1));
 rcu_read_unlock();

 return srq;
}
