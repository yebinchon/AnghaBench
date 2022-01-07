
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct mlx4_ib_demux_ctx {int wq; int ud_wq; TYPE_3__** tun; int port; int ib_dev; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_5__ {int sqp_demux; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;


 scalar_t__ DEMUX_PV_STATE_DOWN ;
 scalar_t__ DEMUX_PV_STATE_DOWNING ;
 int destroy_pv_resources (struct mlx4_ib_dev*,int,int ,TYPE_3__*,int ) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int free_pv_object (struct mlx4_ib_dev*,int,int ) ;
 int kfree (TYPE_3__**) ;
 int mlx4_ib_mcg_port_cleanup (struct mlx4_ib_demux_ctx*,int) ;
 struct mlx4_ib_dev* to_mdev (int ) ;

__attribute__((used)) static void mlx4_ib_free_demux_ctx(struct mlx4_ib_demux_ctx *ctx)
{
 int i;
 if (ctx) {
  struct mlx4_ib_dev *dev = to_mdev(ctx->ib_dev);
  mlx4_ib_mcg_port_cleanup(ctx, 1);
  for (i = 0; i < dev->dev->caps.sqp_demux; i++) {
   if (!ctx->tun[i])
    continue;
   if (ctx->tun[i]->state > DEMUX_PV_STATE_DOWN)
    ctx->tun[i]->state = DEMUX_PV_STATE_DOWNING;
  }
  flush_workqueue(ctx->wq);
  for (i = 0; i < dev->dev->caps.sqp_demux; i++) {
   destroy_pv_resources(dev, i, ctx->port, ctx->tun[i], 0);
   free_pv_object(dev, i, ctx->port);
  }
  kfree(ctx->tun);
  destroy_workqueue(ctx->ud_wq);
  destroy_workqueue(ctx->wq);
 }
}
