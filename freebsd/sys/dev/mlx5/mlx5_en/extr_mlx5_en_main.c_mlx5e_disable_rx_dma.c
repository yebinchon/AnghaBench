
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* comp ) (TYPE_2__*) ;} ;
struct TYPE_3__ {TYPE_2__ mcq; } ;
struct mlx5e_rq {int ifp; TYPE_1__ cq; int wq; int mtx; int watchdog; scalar_t__ enabled; } ;
struct mlx5e_channel {struct mlx5e_rq rq; } ;


 int MLX5_RQC_STATE_ERR ;
 int MLX5_RQC_STATE_RDY ;
 int MLX5_RQC_STATE_RST ;
 int callout_stop (int *) ;
 int mlx5_en_err (int ,char*,int) ;
 int mlx5_wq_ll_is_empty (int *) ;
 int mlx5e_modify_rq (struct mlx5e_rq*,int ,int ) ;
 int msleep (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
mlx5e_disable_rx_dma(struct mlx5e_channel *ch)
{
 struct mlx5e_rq *rq = &ch->rq;
 int err;

 mtx_lock(&rq->mtx);
 rq->enabled = 0;
 callout_stop(&rq->watchdog);
 mtx_unlock(&rq->mtx);

 err = mlx5e_modify_rq(rq, MLX5_RQC_STATE_RDY, MLX5_RQC_STATE_ERR);
 if (err != 0) {
  mlx5_en_err(rq->ifp,
      "mlx5e_modify_rq() from RDY to RST failed: %d\n", err);
 }

 while (!mlx5_wq_ll_is_empty(&rq->wq)) {
  msleep(1);
  rq->cq.mcq.comp(&rq->cq.mcq);
 }





 err = mlx5e_modify_rq(rq, MLX5_RQC_STATE_ERR, MLX5_RQC_STATE_RST);
 if (err != 0) {
  mlx5_en_err(rq->ifp,
      "mlx5e_modify_rq() from ERR to RST failed: %d\n", err);
 }
}
