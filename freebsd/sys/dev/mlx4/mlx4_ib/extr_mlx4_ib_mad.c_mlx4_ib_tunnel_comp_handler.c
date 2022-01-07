
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int going_down_lock; int is_going_down; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;
struct mlx4_ib_demux_pv_ctx {scalar_t__ state; int work; int wq; int ib_dev; } ;
struct ib_cq {struct mlx4_ib_demux_pv_ctx* cq_context; } ;


 scalar_t__ DEMUX_PV_STATE_ACTIVE ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx4_ib_dev* to_mdev (int ) ;

__attribute__((used)) static void mlx4_ib_tunnel_comp_handler(struct ib_cq *cq, void *arg)
{
 unsigned long flags;
 struct mlx4_ib_demux_pv_ctx *ctx = cq->cq_context;
 struct mlx4_ib_dev *dev = to_mdev(ctx->ib_dev);
 spin_lock_irqsave(&dev->sriov.going_down_lock, flags);
 if (!dev->sriov.is_going_down && ctx->state == DEMUX_PV_STATE_ACTIVE)
  queue_work(ctx->wq, &ctx->work);
 spin_unlock_irqrestore(&dev->sriov.going_down_lock, flags);
}
