
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {struct vmbus_xact* xc_free; int xc_lock; int * xc_active; } ;
struct vmbus_xact {int * x_resp; struct vmbus_xact_ctx* x_ctx; } ;


 int KASSERT (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct vmbus_xact**) ;

void
vmbus_xact_put(struct vmbus_xact *xact)
{
 struct vmbus_xact_ctx *ctx = xact->x_ctx;

 KASSERT(ctx->xc_active == ((void*)0), ("pending active xact"));
 xact->x_resp = ((void*)0);

 mtx_lock(&ctx->xc_lock);
 KASSERT(ctx->xc_free == ((void*)0), ("has free xact"));
 ctx->xc_free = xact;
 mtx_unlock(&ctx->xc_lock);
 wakeup(&ctx->xc_free);
}
