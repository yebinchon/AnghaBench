
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* comp ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_2__ mcq; } ;
struct TYPE_6__ {scalar_t__ wqe_ctr; } ;
struct mlx5e_rq {int enabled; TYPE_1__ cq; int ifp; TYPE_3__ wq; } ;
struct mlx5e_channel {struct mlx5e_rq rq; } ;


 int MLX5_RQC_STATE_RDY ;
 int MLX5_RQC_STATE_RST ;
 int mlx5_en_err (int ,char*,int) ;
 int mlx5_wq_ll_update_db_record (TYPE_3__*) ;
 int mlx5e_modify_rq (struct mlx5e_rq*,int ,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
mlx5e_enable_rx_dma(struct mlx5e_channel *ch)
{
 struct mlx5e_rq *rq = &ch->rq;
 int err;

 rq->wq.wqe_ctr = 0;
 mlx5_wq_ll_update_db_record(&rq->wq);
 err = mlx5e_modify_rq(rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
 if (err != 0) {
  mlx5_en_err(rq->ifp,
      "mlx5e_modify_rq() from RST to RDY failed: %d\n", err);
        }

 rq->enabled = 1;

 rq->cq.mcq.comp(&rq->cq.mcq);
}
