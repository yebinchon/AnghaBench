
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {int xc_flags; int xc_lock; int * xc_orphan; } ;


 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int VMBUS_XACT_CTXF_DESTROY ;
 int free (struct vmbus_xact_ctx*,int ) ;
 int mtx_destroy (int *) ;
 int vmbus_xact_free (int *) ;

__attribute__((used)) static void
vmbus_xact_ctx_free(struct vmbus_xact_ctx *ctx)
{
 KASSERT(ctx->xc_flags & VMBUS_XACT_CTXF_DESTROY,
     ("xact ctx was not orphaned"));
 KASSERT(ctx->xc_orphan != ((void*)0), ("no orphaned xact"));

 vmbus_xact_free(ctx->xc_orphan);
 mtx_destroy(&ctx->xc_lock);
 free(ctx, M_DEVBUF);
}
