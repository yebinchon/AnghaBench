
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {int xc_flags; int * xc_active; int xc_lock; } ;
struct vmbus_xact {struct vmbus_xact_ctx* x_ctx; } ;


 int KASSERT (int,char*) ;
 int VMBUS_XACT_CTXF_DESTROY ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;
 int vmbus_xact_save_resp (struct vmbus_xact*,void const*,size_t) ;
 int wakeup (int **) ;

void
vmbus_xact_wakeup(struct vmbus_xact *xact, const void *data, size_t dlen)
{
 struct vmbus_xact_ctx *ctx = xact->x_ctx;
 int do_wakeup = 0;

 mtx_lock(&ctx->xc_lock);




 if (ctx->xc_active != ((void*)0)) {
  vmbus_xact_save_resp(xact, data, dlen);
  do_wakeup = 1;
 } else {
  KASSERT(ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY,
      ("no active xact pending"));
  printf("vmbus: drop xact response\n");
 }
 mtx_unlock(&ctx->xc_lock);

 if (do_wakeup)
  wakeup(&ctx->xc_active);
}
