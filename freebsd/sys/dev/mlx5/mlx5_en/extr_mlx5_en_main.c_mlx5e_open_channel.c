
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mlx5e_priv {int num_tc; } ;
struct mlx5e_channel_param {int rq; int rx_cq; } ;
struct TYPE_6__ {int (* comp ) (TYPE_1__*) ;} ;
struct TYPE_8__ {TYPE_1__ mcq; } ;
struct TYPE_7__ {TYPE_3__ cq; } ;
struct mlx5e_channel {TYPE_2__ rq; int ix; int priv; TYPE_2__* sq; } ;


 int MLX5E_ZERO (TYPE_2__*,int ) ;
 int mlx5e_close_cq (TYPE_3__*) ;
 int mlx5e_close_sqs_wait (struct mlx5e_channel*) ;
 int mlx5e_close_tx_cqs (struct mlx5e_channel*) ;
 int mlx5e_open_cq (int ,int *,TYPE_3__*,int *,int ) ;
 int mlx5e_open_rq (struct mlx5e_channel*,int *,TYPE_2__*) ;
 int mlx5e_open_sqs (struct mlx5e_channel*,struct mlx5e_channel_param*) ;
 int mlx5e_open_tx_cqs (struct mlx5e_channel*,struct mlx5e_channel_param*) ;
 int mlx5e_rq_zero_start ;
 int mlx5e_rx_cq_comp ;
 int mlx5e_sq_zero_start ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int
mlx5e_open_channel(struct mlx5e_priv *priv,
    struct mlx5e_channel_param *cparam,
    struct mlx5e_channel *c)
{
 int i, err;


 MLX5E_ZERO(&c->rq, mlx5e_rq_zero_start);
 for (i = 0; i != priv->num_tc; i++)
  MLX5E_ZERO(&c->sq[i], mlx5e_sq_zero_start);


 err = mlx5e_open_tx_cqs(c, cparam);
 if (err)
  goto err_free;


 err = mlx5e_open_cq(c->priv, &cparam->rx_cq, &c->rq.cq,
     &mlx5e_rx_cq_comp, c->ix);
 if (err)
  goto err_close_tx_cqs;

 err = mlx5e_open_sqs(c, cparam);
 if (err)
  goto err_close_rx_cq;

 err = mlx5e_open_rq(c, &cparam->rq, &c->rq);
 if (err)
  goto err_close_sqs;


 c->rq.cq.mcq.comp(&c->rq.cq.mcq);

 return (0);

err_close_sqs:
 mlx5e_close_sqs_wait(c);

err_close_rx_cq:
 mlx5e_close_cq(&c->rq.cq);

err_close_tx_cqs:
 mlx5e_close_tx_cqs(c);

err_free:
 return (err);
}
