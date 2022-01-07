
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vmbus_xact_ctx {int xc_flags; struct vmbus_xact* xc_active; int xc_lock; } ;
struct vmbus_xact {void* x_resp; size_t x_resp_len; struct vmbus_xact_ctx* x_ctx; } ;
typedef int b ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int VMBUS_XACT_CTXF_DESTROY ;
 int mtx_assert (int *,int ) ;
 int printf (char*) ;
 int vmbus_xact_save_resp (struct vmbus_xact*,int *,int) ;

__attribute__((used)) static const void *
vmbus_xact_return(struct vmbus_xact *xact, size_t *resp_len)
{
 struct vmbus_xact_ctx *ctx = xact->x_ctx;
 const void *resp;

 mtx_assert(&ctx->xc_lock, MA_OWNED);
 KASSERT(ctx->xc_active == xact, ("xact trashed"));

 if ((ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY) && xact->x_resp == ((void*)0)) {
  uint8_t b = 0;





  printf("vmbus: xact ctx was orphaned w/ pending xact\n");
  vmbus_xact_save_resp(ctx->xc_active, &b, sizeof(b));
 }
 KASSERT(xact->x_resp != ((void*)0), ("no response"));

 ctx->xc_active = ((void*)0);

 resp = xact->x_resp;
 *resp_len = xact->x_resp_len;

 return (resp);
}
