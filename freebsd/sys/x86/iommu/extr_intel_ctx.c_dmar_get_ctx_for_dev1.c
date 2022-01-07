
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct sf_buf {int dummy; } ;
struct dmar_unit {int unit; int hw_gcmd; int segment; int domains; } ;
struct dmar_domain {int agaw; int mgaw; int domain; } ;
struct TYPE_2__ {int * owner; } ;
struct dmar_ctx {int refs; TYPE_1__ ctx_tag; struct dmar_domain* domain; } ;
typedef int dmar_ctx_entry_t ;
typedef int * device_t ;


 int DMAR_GCMD_TE ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_INSERT_HEAD (int *,struct dmar_domain*,int ) ;
 int M_DMAR_CTX ;
 int PCI_RID2BUS (int ) ;
 int PCI_RID2FUNC (int ) ;
 int PCI_RID2SLOT (int ) ;
 int TD_PINNED_ASSERT ;
 int TD_PREP_PINNED_ASSERT ;
 scalar_t__ bootverbose ;
 int ctx_id_entry_init (struct dmar_ctx*,int *,int) ;
 int ctx_tag_init (struct dmar_ctx*,int *) ;
 int device_printf (int *,char*,int,int ,int,int,int,int ,int ,int ,int ,char*) ;
 struct dmar_ctx* dmar_ctx_alloc (struct dmar_domain*,int ) ;
 int dmar_ctx_link (struct dmar_ctx*) ;
 struct dmar_domain* dmar_domain_alloc (struct dmar_unit*,int) ;
 int dmar_domain_destroy (struct dmar_domain*) ;
 int dmar_enable_translation (struct dmar_unit*) ;
 int dmar_ensure_ctx_page (struct dmar_unit*,int) ;
 struct dmar_ctx* dmar_find_ctx_locked (struct dmar_unit*,int ) ;
 int dmar_flush_for_ctx_entry (struct dmar_unit*,int) ;
 int dmar_free_ctx_locked (struct dmar_unit*,struct dmar_ctx*) ;
 int * dmar_map_ctx_entry (struct dmar_ctx*,struct sf_buf**) ;
 int dmar_unmap_pgtbl (struct sf_buf*) ;
 int domain_init_rmrr (struct dmar_domain*,int *,int,int,int,int,int,void const*,int) ;
 int free (struct dmar_ctx*,int ) ;
 int link ;
 int pci_get_bus (int *) ;
 int pci_get_function (int *) ;
 int pci_get_slot (int *) ;
 int printf (char*,int,...) ;

__attribute__((used)) static struct dmar_ctx *
dmar_get_ctx_for_dev1(struct dmar_unit *dmar, device_t dev, uint16_t rid,
    int dev_domain, int dev_busno, const void *dev_path, int dev_path_len,
    bool id_mapped, bool rmrr_init)
{
 struct dmar_domain *domain, *domain1;
 struct dmar_ctx *ctx, *ctx1;
 dmar_ctx_entry_t *ctxp;
 struct sf_buf *sf;
 int bus, slot, func, error;
 bool enable;

 if (dev != ((void*)0)) {
  bus = pci_get_bus(dev);
  slot = pci_get_slot(dev);
  func = pci_get_function(dev);
 } else {
  bus = PCI_RID2BUS(rid);
  slot = PCI_RID2SLOT(rid);
  func = PCI_RID2FUNC(rid);
 }
 enable = 0;
 TD_PREP_PINNED_ASSERT;
 DMAR_LOCK(dmar);
 ctx = dmar_find_ctx_locked(dmar, rid);
 error = 0;
 if (ctx == ((void*)0)) {




  DMAR_UNLOCK(dmar);
  dmar_ensure_ctx_page(dmar, PCI_RID2BUS(rid));
  domain1 = dmar_domain_alloc(dmar, id_mapped);
  if (domain1 == ((void*)0)) {
   TD_PINNED_ASSERT;
   return (((void*)0));
  }
  if (!id_mapped) {
   error = domain_init_rmrr(domain1, dev, bus,
       slot, func, dev_domain, dev_busno, dev_path,
       dev_path_len);
   if (error != 0) {
    dmar_domain_destroy(domain1);
    TD_PINNED_ASSERT;
    return (((void*)0));
   }
  }
  ctx1 = dmar_ctx_alloc(domain1, rid);
  ctxp = dmar_map_ctx_entry(ctx1, &sf);
  DMAR_LOCK(dmar);





  ctx = dmar_find_ctx_locked(dmar, rid);
  if (ctx == ((void*)0)) {
   domain = domain1;
   ctx = ctx1;
   dmar_ctx_link(ctx);
   ctx->ctx_tag.owner = dev;
   ctx_tag_init(ctx, dev);






   if (LIST_EMPTY(&dmar->domains))
    enable = 1;
   LIST_INSERT_HEAD(&dmar->domains, domain, link);
   ctx_id_entry_init(ctx, ctxp, 0);
   if (dev != ((void*)0)) {
    device_printf(dev,
       "dmar%d pci%d:%d:%d:%d rid %x domain %d mgaw %d "
        "agaw %d %s-mapped\n",
        dmar->unit, dmar->segment, bus, slot,
        func, rid, domain->domain, domain->mgaw,
        domain->agaw, id_mapped ? "id" : "re");
   }
   dmar_unmap_pgtbl(sf);
  } else {
   dmar_unmap_pgtbl(sf);
   dmar_domain_destroy(domain1);

   free(ctx1, M_DMAR_CTX);
   domain = ctx->domain;
   ctx->refs++;
  }
 } else {
  domain = ctx->domain;
  if (ctx->ctx_tag.owner == ((void*)0))
   ctx->ctx_tag.owner = dev;
  ctx->refs++;
 }

 error = dmar_flush_for_ctx_entry(dmar, enable);
 if (error != 0) {
  dmar_free_ctx_locked(dmar, ctx);
  TD_PINNED_ASSERT;
  return (((void*)0));
 }






 if (enable && !rmrr_init && (dmar->hw_gcmd & DMAR_GCMD_TE) == 0) {
  error = dmar_enable_translation(dmar);
  if (error == 0) {
   if (bootverbose) {
    printf("dmar%d: enabled translation\n",
        dmar->unit);
   }
  } else {
   printf("dmar%d: enabling translation failed, "
       "error %d\n", dmar->unit, error);
   dmar_free_ctx_locked(dmar, ctx);
   TD_PINNED_ASSERT;
   return (((void*)0));
  }
 }
 DMAR_UNLOCK(dmar);
 TD_PINNED_ASSERT;
 return (ctx);
}
