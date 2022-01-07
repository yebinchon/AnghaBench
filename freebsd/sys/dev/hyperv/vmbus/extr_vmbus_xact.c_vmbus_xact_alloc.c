
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_xact_ctx {int xc_priv_size; int xc_resp_size; int xc_req_size; } ;
struct vmbus_xact {void* x_resp0; void* x_priv; int * x_req; int x_req_dma; struct vmbus_xact_ctx* x_ctx; } ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_WAITOK ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int free (struct vmbus_xact*,int ) ;
 int * hyperv_dmamem_alloc (int ,int ,int ,int ,int *,int ) ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static struct vmbus_xact *
vmbus_xact_alloc(struct vmbus_xact_ctx *ctx, bus_dma_tag_t parent_dtag)
{
 struct vmbus_xact *xact;

 xact = malloc(sizeof(*xact), M_DEVBUF, M_WAITOK | M_ZERO);
 xact->x_ctx = ctx;


 xact->x_req = hyperv_dmamem_alloc(parent_dtag, PAGE_SIZE, 0,
     ctx->xc_req_size, &xact->x_req_dma, BUS_DMA_WAITOK);
 if (xact->x_req == ((void*)0)) {
  free(xact, M_DEVBUF);
  return (((void*)0));
 }
 if (ctx->xc_priv_size != 0)
  xact->x_priv = malloc(ctx->xc_priv_size, M_DEVBUF, M_WAITOK);
 xact->x_resp0 = malloc(ctx->xc_resp_size, M_DEVBUF, M_WAITOK);

 return (xact);
}
