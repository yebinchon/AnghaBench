
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_cq {int mcq; TYPE_1__* priv; } ;
struct TYPE_2__ {int mdev; } ;


 int mlx5_core_destroy_cq (int ,int *) ;

__attribute__((used)) static void
mlx5e_disable_cq(struct mlx5e_cq *cq)
{

 mlx5_core_destroy_cq(cq->priv->mdev, &cq->mcq);
}
