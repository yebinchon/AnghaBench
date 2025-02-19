
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {int xc_lock; struct vmbus_xact* xc_active; } ;
struct vmbus_xact {struct vmbus_xact_ctx* x_ctx; } ;


 int KASSERT (int,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
vmbus_xact_deactivate(struct vmbus_xact *xact)
{
 struct vmbus_xact_ctx *ctx = xact->x_ctx;

 mtx_lock(&ctx->xc_lock);
 KASSERT(ctx->xc_active == xact, ("xact mismatch"));
 ctx->xc_active = ((void*)0);
 mtx_unlock(&ctx->xc_lock);
}
