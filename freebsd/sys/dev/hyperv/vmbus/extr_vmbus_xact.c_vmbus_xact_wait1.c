
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {int xc_flags; int xc_lock; struct vmbus_xact* xc_active; } ;
struct vmbus_xact {int * x_resp; struct vmbus_xact_ctx* x_ctx; } ;


 int DELAY (int) ;
 int KASSERT (int,char*) ;
 int VMBUS_XACT_CTXF_DESTROY ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct vmbus_xact**,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 void* vmbus_xact_return (struct vmbus_xact*,size_t*) ;

__attribute__((used)) static const void *
vmbus_xact_wait1(struct vmbus_xact *xact, size_t *resp_len,
    bool can_sleep)
{
 struct vmbus_xact_ctx *ctx = xact->x_ctx;
 const void *resp;

 mtx_lock(&ctx->xc_lock);

 KASSERT(ctx->xc_active == xact, ("xact mismatch"));
 while (xact->x_resp == ((void*)0) &&
     (ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY) == 0) {
  if (can_sleep) {
   mtx_sleep(&ctx->xc_active, &ctx->xc_lock, 0,
       "wxact", 0);
  } else {
   mtx_unlock(&ctx->xc_lock);
   DELAY(1000);
   mtx_lock(&ctx->xc_lock);
  }
 }
 resp = vmbus_xact_return(xact, resp_len);

 mtx_unlock(&ctx->xc_lock);

 return (resp);
}
