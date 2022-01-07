
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cc; } ;
struct mlx5_core_cq {TYPE_1__* uar; } ;
struct mlx5e_cq {TYPE_2__ wq; struct mlx5_core_cq mcq; } ;
typedef int spinlock_t ;
struct TYPE_3__ {int map; } ;


 int MLX5_CQ_DB_REQ_NOT ;
 int mlx5_cq_arm (struct mlx5_core_cq*,int ,int ,int *,int ) ;

__attribute__((used)) static inline void
mlx5e_cq_arm(struct mlx5e_cq *cq, spinlock_t *dblock)
{
 struct mlx5_core_cq *mcq;

 mcq = &cq->mcq;
 mlx5_cq_arm(mcq, MLX5_CQ_DB_REQ_NOT, mcq->uar->map, dblock, cq->wq.cc);
}
