
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_demux_ctx {int port; scalar_t__ flushing; int mcg_mgid0_list; int mcg_table; int mcg_table_lock; int mcg_wq; int tid; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int atomic_set (int *,int ) ;
 int mutex_init (int *) ;
 int sprintf (char*,char*,int) ;

int mlx4_ib_mcg_port_init(struct mlx4_ib_demux_ctx *ctx)
{
 char name[20];

 atomic_set(&ctx->tid, 0);
 sprintf(name, "mlx4_ib_mcg%d", ctx->port);
 ctx->mcg_wq = alloc_ordered_workqueue(name, WQ_MEM_RECLAIM);
 if (!ctx->mcg_wq)
  return -ENOMEM;

 mutex_init(&ctx->mcg_table_lock);
 ctx->mcg_table = RB_ROOT;
 INIT_LIST_HEAD(&ctx->mcg_mgid0_list);
 ctx->flushing = 0;

 return 0;
}
