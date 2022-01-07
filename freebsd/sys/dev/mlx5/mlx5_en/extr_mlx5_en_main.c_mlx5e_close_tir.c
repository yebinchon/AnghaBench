
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int * tirn; int mdev; } ;


 int mlx5_core_destroy_tir (int ,int ) ;

__attribute__((used)) static void
mlx5e_close_tir(struct mlx5e_priv *priv, int tt)
{
 mlx5_core_destroy_tir(priv->mdev, priv->tirn[tt]);
}
