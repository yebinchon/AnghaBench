
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_rq_param {int dummy; } ;
struct mlx5e_rq {int dummy; } ;
struct TYPE_2__ {int enabled; } ;
struct mlx5e_channel {TYPE_1__ rq; } ;


 int MLX5_RQC_STATE_RDY ;
 int MLX5_RQC_STATE_RST ;
 int mlx5e_create_rq (struct mlx5e_channel*,struct mlx5e_rq_param*,struct mlx5e_rq*) ;
 int mlx5e_destroy_rq (struct mlx5e_rq*) ;
 int mlx5e_disable_rq (struct mlx5e_rq*) ;
 int mlx5e_enable_rq (struct mlx5e_rq*,struct mlx5e_rq_param*) ;
 int mlx5e_modify_rq (struct mlx5e_rq*,int ,int ) ;

__attribute__((used)) static int
mlx5e_open_rq(struct mlx5e_channel *c,
    struct mlx5e_rq_param *param,
    struct mlx5e_rq *rq)
{
 int err;

 err = mlx5e_create_rq(c, param, rq);
 if (err)
  return (err);

 err = mlx5e_enable_rq(rq, param);
 if (err)
  goto err_destroy_rq;

 err = mlx5e_modify_rq(rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
 if (err)
  goto err_disable_rq;

 c->rq.enabled = 1;

 return (0);

err_disable_rq:
 mlx5e_disable_rq(rq);
err_destroy_rq:
 mlx5e_destroy_rq(rq);

 return (err);
}
