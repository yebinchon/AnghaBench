
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_sq {int sqn; TYPE_1__* priv; } ;
struct TYPE_2__ {int mdev; } ;


 int mlx5_core_destroy_sq (int ,int ) ;

void
mlx5e_disable_sq(struct mlx5e_sq *sq)
{

 mlx5_core_destroy_sq(sq->priv->mdev, sq->sqn);
}
