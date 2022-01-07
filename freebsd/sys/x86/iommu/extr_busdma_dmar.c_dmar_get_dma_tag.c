
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dma_enabled; } ;
struct dmar_ctx {int ctx_tag; } ;
typedef int device_t ;
typedef int * bus_dma_tag_t ;


 int bootverbose ;
 struct dmar_unit* dmar_find (int ,int ) ;
 struct dmar_ctx* dmar_instantiate_ctx (struct dmar_unit*,int ,int) ;
 int dmar_instantiate_rmrr_ctxs (struct dmar_unit*) ;
 int dmar_quirks_pre_use (struct dmar_unit*) ;

bus_dma_tag_t
dmar_get_dma_tag(device_t dev, device_t child)
{
 struct dmar_unit *dmar;
 struct dmar_ctx *ctx;
 bus_dma_tag_t res;

 dmar = dmar_find(child, bootverbose);

 if (dmar == ((void*)0))
  return (((void*)0));
 if (!dmar->dma_enabled)
  return (((void*)0));
 dmar_quirks_pre_use(dmar);
 dmar_instantiate_rmrr_ctxs(dmar);

 ctx = dmar_instantiate_ctx(dmar, child, 0);
 res = ctx == ((void*)0) ? ((void*)0) : (bus_dma_tag_t)&ctx->ctx_tag;
 return (res);
}
