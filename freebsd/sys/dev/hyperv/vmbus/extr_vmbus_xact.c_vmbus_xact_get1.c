
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmbus_xact_ctx {int xc_flags; int xc_lock; struct vmbus_xact* xc_free; } ;
struct vmbus_xact {int * x_resp; } ;


 int KASSERT (int ,char*) ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct vmbus_xact**,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct vmbus_xact *
vmbus_xact_get1(struct vmbus_xact_ctx *ctx, uint32_t dtor_flag)
{
 struct vmbus_xact *xact;

 mtx_lock(&ctx->xc_lock);

 while ((ctx->xc_flags & dtor_flag) == 0 && ctx->xc_free == ((void*)0))
  mtx_sleep(&ctx->xc_free, &ctx->xc_lock, 0, "gxact", 0);
 if (ctx->xc_flags & dtor_flag) {

  xact = ((void*)0);
 } else {
  xact = ctx->xc_free;
  KASSERT(xact != ((void*)0), ("no free xact"));
  KASSERT(xact->x_resp == ((void*)0), ("xact has pending response"));
  ctx->xc_free = ((void*)0);
 }

 mtx_unlock(&ctx->xc_lock);

 return (xact);
}
