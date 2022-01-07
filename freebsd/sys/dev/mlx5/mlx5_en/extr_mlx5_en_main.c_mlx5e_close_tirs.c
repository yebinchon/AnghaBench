
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int MLX5E_NUM_TT ;
 int mlx5e_close_tir (struct mlx5e_priv*,int) ;

__attribute__((used)) static void
mlx5e_close_tirs(struct mlx5e_priv *priv)
{
 int i;

 for (i = 0; i < MLX5E_NUM_TT; i++)
  mlx5e_close_tir(priv, i);
}
