
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int num_cqs; } ;
struct mlx4_dev {TYPE_2__ caps; } ;
struct mlx4_cq {int (* comp ) (struct mlx4_cq*) ;int arm_sn; } ;
struct TYPE_4__ {int tree; } ;
struct TYPE_6__ {TYPE_1__ cq_table; } ;


 int mlx4_dbg (struct mlx4_dev*,char*,int) ;
 TYPE_3__* mlx4_priv (struct mlx4_dev*) ;
 struct mlx4_cq* radix_tree_lookup (int *,int) ;
 int stub1 (struct mlx4_cq*) ;

void mlx4_cq_completion(struct mlx4_dev *dev, u32 cqn)
{
 struct mlx4_cq *cq;

 cq = radix_tree_lookup(&mlx4_priv(dev)->cq_table.tree,
          cqn & (dev->caps.num_cqs - 1));
 if (!cq) {
  mlx4_dbg(dev, "Completion event for bogus CQ %08x\n", cqn);
  return;
 }

 ++cq->arm_sn;

 cq->comp(cq);
}
