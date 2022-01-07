
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_channel_param {int tx_cq; int rx_cq; int sq; int rq; } ;


 int memset (struct mlx5e_channel_param*,int ,int) ;
 int mlx5e_build_rq_param (struct mlx5e_priv*,int *) ;
 int mlx5e_build_rx_cq_param (struct mlx5e_priv*,int *) ;
 int mlx5e_build_sq_param (struct mlx5e_priv*,int *) ;
 int mlx5e_build_tx_cq_param (struct mlx5e_priv*,int *) ;

__attribute__((used)) static void
mlx5e_build_channel_param(struct mlx5e_priv *priv,
    struct mlx5e_channel_param *cparam)
{
 memset(cparam, 0, sizeof(*cparam));

 mlx5e_build_rq_param(priv, &cparam->rq);
 mlx5e_build_sq_param(priv, &cparam->sq);
 mlx5e_build_rx_cq_param(priv, &cparam->rx_cq);
 mlx5e_build_tx_cq_param(priv, &cparam->tx_cq);
}
