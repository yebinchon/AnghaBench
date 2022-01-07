
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int MLX5E_NUM_TT ;
 int mlx5e_close_tir (struct mlx5e_priv*,int) ;
 int mlx5e_open_tir (struct mlx5e_priv*,int) ;

__attribute__((used)) static int
mlx5e_open_tirs(struct mlx5e_priv *priv)
{
 int err;
 int i;

 for (i = 0; i < MLX5E_NUM_TT; i++) {
  err = mlx5e_open_tir(priv, i);
  if (err)
   goto err_close_tirs;
 }

 return (0);

err_close_tirs:
 for (i--; i >= 0; i--)
  mlx5e_close_tir(priv, i);

 return (err);
}
