
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int num_tc; } ;


 int mlx5e_close_tis (struct mlx5e_priv*,int) ;
 int mlx5e_open_tis (struct mlx5e_priv*,int) ;

__attribute__((used)) static int
mlx5e_open_tises(struct mlx5e_priv *priv)
{
 int num_tc = priv->num_tc;
 int err;
 int tc;

 for (tc = 0; tc < num_tc; tc++) {
  err = mlx5e_open_tis(priv, tc);
  if (err)
   goto err_close_tises;
 }

 return (0);

err_close_tises:
 for (tc--; tc >= 0; tc--)
  mlx5e_close_tis(priv, tc);

 return (err);
}
