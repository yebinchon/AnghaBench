
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {size_t xc_req_size; size_t xc_resp_size; size_t xc_priv_size; int xc_lock; int * xc_free; } ;
typedef int bus_dma_tag_t ;


 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct vmbus_xact_ctx*,int ) ;
 struct vmbus_xact_ctx* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int * vmbus_xact_alloc (struct vmbus_xact_ctx*,int ) ;

struct vmbus_xact_ctx *
vmbus_xact_ctx_create(bus_dma_tag_t dtag, size_t req_size, size_t resp_size,
    size_t priv_size)
{
 struct vmbus_xact_ctx *ctx;

 KASSERT(req_size > 0, ("request size is 0"));
 KASSERT(resp_size > 0, ("response size is 0"));

 ctx = malloc(sizeof(*ctx), M_DEVBUF, M_WAITOK | M_ZERO);
 ctx->xc_req_size = req_size;
 ctx->xc_resp_size = resp_size;
 ctx->xc_priv_size = priv_size;

 ctx->xc_free = vmbus_xact_alloc(ctx, dtag);
 if (ctx->xc_free == ((void*)0)) {
  free(ctx, M_DEVBUF);
  return (((void*)0));
 }

 mtx_init(&ctx->xc_lock, "vmbus xact", ((void*)0), MTX_DEF);

 return (ctx);
}
