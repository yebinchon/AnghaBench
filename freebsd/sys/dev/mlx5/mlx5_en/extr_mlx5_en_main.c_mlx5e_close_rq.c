
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rq {int mtx; int watchdog; scalar_t__ enabled; } ;


 int MLX5_RQC_STATE_ERR ;
 int MLX5_RQC_STATE_RDY ;
 int callout_stop (int *) ;
 int mlx5e_modify_rq (struct mlx5e_rq*,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mlx5e_close_rq(struct mlx5e_rq *rq)
{
 mtx_lock(&rq->mtx);
 rq->enabled = 0;
 callout_stop(&rq->watchdog);
 mtx_unlock(&rq->mtx);

 mlx5e_modify_rq(rq, MLX5_RQC_STATE_RDY, MLX5_RQC_STATE_ERR);
}
