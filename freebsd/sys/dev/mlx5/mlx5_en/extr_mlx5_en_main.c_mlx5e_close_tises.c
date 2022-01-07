
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int num_tc; } ;


 int mlx5e_close_tis (struct mlx5e_priv*,int) ;

__attribute__((used)) static void
mlx5e_close_tises(struct mlx5e_priv *priv)
{
 int num_tc = priv->num_tc;
 int tc;

 for (tc = 0; tc < num_tc; tc++)
  mlx5e_close_tis(priv, tc);
}
