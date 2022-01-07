
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int * tisn; int mdev; } ;


 int mlx5_core_destroy_tis (int ,int ) ;

__attribute__((used)) static void
mlx5e_close_tis(struct mlx5e_priv *priv, int tc)
{
 mlx5_core_destroy_tis(priv->mdev, priv->tisn[tc]);
}
