
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {int xc_flags; int * xc_orphan; int xc_active; int xc_free; int xc_lock; } ;


 int VMBUS_XACT_CTXF_DESTROY ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int * vmbus_xact_get1 (struct vmbus_xact_ctx*,int ) ;
 int wakeup (int *) ;

bool
vmbus_xact_ctx_orphan(struct vmbus_xact_ctx *ctx)
{
 mtx_lock(&ctx->xc_lock);
 if (ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY) {
  mtx_unlock(&ctx->xc_lock);
  return (0);
 }
 ctx->xc_flags |= VMBUS_XACT_CTXF_DESTROY;
 mtx_unlock(&ctx->xc_lock);

 wakeup(&ctx->xc_free);
 wakeup(&ctx->xc_active);

 ctx->xc_orphan = vmbus_xact_get1(ctx, 0);
 if (ctx->xc_orphan == ((void*)0))
  panic("can't get xact");
 return (1);
}
