
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {size_t xc_resp_size; struct vmbus_xact* xc_active; int xc_lock; } ;
struct vmbus_xact {size_t x_resp_len; int x_resp0; int x_resp; struct vmbus_xact_ctx* x_ctx; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int memcpy (int ,void const*,size_t) ;
 int mtx_assert (int *,int ) ;
 int printf (char*,size_t,size_t) ;

__attribute__((used)) static void
vmbus_xact_save_resp(struct vmbus_xact *xact, const void *data, size_t dlen)
{
 struct vmbus_xact_ctx *ctx = xact->x_ctx;
 size_t cplen = dlen;

 mtx_assert(&ctx->xc_lock, MA_OWNED);

 if (cplen > ctx->xc_resp_size) {
  printf("vmbus: xact response truncated %zu -> %zu\n",
      cplen, ctx->xc_resp_size);
  cplen = ctx->xc_resp_size;
 }

 KASSERT(ctx->xc_active == xact, ("xact mismatch"));
 memcpy(xact->x_resp0, data, cplen);
 xact->x_resp_len = cplen;
 xact->x_resp = xact->x_resp0;
}
