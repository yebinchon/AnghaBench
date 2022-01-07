
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dmar_unit {int dummy; } ;
struct dmar_ctx {int flags; } ;
typedef int device_t ;


 int DMAR_CTX_DISABLED ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int dmar_bus_dma_is_dev_disabled (int ,int ,int ,int ) ;
 int dmar_free_ctx_locked (struct dmar_unit*,struct dmar_ctx*) ;
 struct dmar_ctx* dmar_get_ctx_for_dev (struct dmar_unit*,int ,int ,int,int) ;
 int dmar_get_requester (int ,int *) ;
 int pci_get_bus (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

struct dmar_ctx *
dmar_instantiate_ctx(struct dmar_unit *dmar, device_t dev, bool rmrr)
{
 device_t requester;
 struct dmar_ctx *ctx;
 bool disabled;
 uint16_t rid;

 requester = dmar_get_requester(dev, &rid);
 disabled = dmar_bus_dma_is_dev_disabled(pci_get_domain(requester),
     pci_get_bus(requester), pci_get_slot(requester),
     pci_get_function(requester));
 ctx = dmar_get_ctx_for_dev(dmar, requester, rid, disabled, rmrr);
 if (ctx == ((void*)0))
  return (((void*)0));
 if (disabled) {




  DMAR_LOCK(dmar);
  if ((ctx->flags & DMAR_CTX_DISABLED) == 0) {
   ctx->flags |= DMAR_CTX_DISABLED;
   DMAR_UNLOCK(dmar);
  } else {
   dmar_free_ctx_locked(dmar, ctx);
  }
  ctx = ((void*)0);
 }
 return (ctx);
}
