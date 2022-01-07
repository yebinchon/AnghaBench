
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_demux_ctx {int flushing; } ;
struct clean_work {int destroy_wq; int work; struct mlx4_ib_demux_ctx* ctx; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int _mlx4_ib_mcg_port_cleanup (struct mlx4_ib_demux_ctx*,int) ;
 int clean_wq ;
 struct clean_work* kmalloc (int,int ) ;
 int mcg_clean_task ;
 int mcg_warn (char*) ;
 int queue_work (int ,int *) ;

void mlx4_ib_mcg_port_cleanup(struct mlx4_ib_demux_ctx *ctx, int destroy_wq)
{
 struct clean_work *work;

 if (ctx->flushing)
  return;

 ctx->flushing = 1;

 if (destroy_wq) {
  _mlx4_ib_mcg_port_cleanup(ctx, destroy_wq);
  ctx->flushing = 0;
  return;
 }

 work = kmalloc(sizeof *work, GFP_KERNEL);
 if (!work) {
  ctx->flushing = 0;
  mcg_warn("failed allocating work for cleanup\n");
  return;
 }

 work->ctx = ctx;
 work->destroy_wq = destroy_wq;
 INIT_WORK(&work->work, mcg_clean_task);
 queue_work(clean_wq, &work->work);
}
