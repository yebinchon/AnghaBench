
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_cq_param {int dummy; } ;
struct mlx5e_cq {int dummy; } ;
typedef int mlx5e_cq_comp_t ;


 int mlx5e_create_cq (struct mlx5e_priv*,struct mlx5e_cq_param*,struct mlx5e_cq*,int *,int) ;
 int mlx5e_destroy_cq (struct mlx5e_cq*) ;
 int mlx5e_enable_cq (struct mlx5e_cq*,struct mlx5e_cq_param*,int) ;

int
mlx5e_open_cq(struct mlx5e_priv *priv,
    struct mlx5e_cq_param *param,
    struct mlx5e_cq *cq,
    mlx5e_cq_comp_t *comp,
    int eq_ix)
{
 int err;

 err = mlx5e_create_cq(priv, param, cq, comp, eq_ix);
 if (err)
  return (err);

 err = mlx5e_enable_cq(cq, param, eq_ix);
 if (err)
  goto err_destroy_cq;

 return (0);

err_destroy_cq:
 mlx5e_destroy_cq(cq);

 return (err);
}
