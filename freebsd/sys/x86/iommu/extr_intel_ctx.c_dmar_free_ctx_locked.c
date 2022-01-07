
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sf_buf {int dummy; } ;
struct dmar_unit {int hw_ecap; scalar_t__ qi_enabled; } ;
struct dmar_domain {int dummy; } ;
struct dmar_ctx {int refs; int flags; struct dmar_domain* domain; } ;
struct TYPE_4__ {scalar_t__ ctx2; int ctx1; } ;
typedef TYPE_1__ dmar_ctx_entry_t ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int DMAR_CTX_DISABLED ;
 int DMAR_ECAP_DI ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int M_DMAR_CTX ;
 int TD_PINNED_ASSERT ;
 int TD_PREP_PINNED_ASSERT ;
 int dmar_ctx_unlink (struct dmar_ctx*) ;
 int dmar_flush_ctx_to_ram (struct dmar_unit*,TYPE_1__*) ;
 int dmar_inv_ctx_glob (struct dmar_unit*) ;
 int dmar_inv_iotlb_glob (struct dmar_unit*) ;
 TYPE_1__* dmar_map_ctx_entry (struct dmar_ctx*,struct sf_buf**) ;
 int dmar_pte_clear (int *) ;
 int dmar_qi_invalidate_iotlb_glob_locked (struct dmar_unit*) ;
 int dmar_unmap_pgtbl (struct sf_buf*) ;
 int dmar_unref_domain_locked (struct dmar_unit*,struct dmar_domain*) ;
 int free (struct dmar_ctx*,int ) ;

void
dmar_free_ctx_locked(struct dmar_unit *dmar, struct dmar_ctx *ctx)
{
 struct sf_buf *sf;
 dmar_ctx_entry_t *ctxp;
 struct dmar_domain *domain;

 DMAR_ASSERT_LOCKED(dmar);
 KASSERT(ctx->refs >= 1,
     ("dmar %p ctx %p refs %u", dmar, ctx, ctx->refs));





 if (ctx->refs > 1) {
  ctx->refs--;
  DMAR_UNLOCK(dmar);
  return;
 }

 KASSERT((ctx->flags & DMAR_CTX_DISABLED) == 0,
     ("lost ref on disabled ctx %p", ctx));






 DMAR_UNLOCK(dmar);
 TD_PREP_PINNED_ASSERT;
 ctxp = dmar_map_ctx_entry(ctx, &sf);
 DMAR_LOCK(dmar);
 KASSERT(ctx->refs >= 1,
     ("dmar %p ctx %p refs %u", dmar, ctx, ctx->refs));





 if (ctx->refs > 1) {
  ctx->refs--;
  DMAR_UNLOCK(dmar);
  dmar_unmap_pgtbl(sf);
  TD_PINNED_ASSERT;
  return;
 }

 KASSERT((ctx->flags & DMAR_CTX_DISABLED) == 0,
     ("lost ref on disabled ctx %p", ctx));





 dmar_pte_clear(&ctxp->ctx1);
 ctxp->ctx2 = 0;
 dmar_flush_ctx_to_ram(dmar, ctxp);
 dmar_inv_ctx_glob(dmar);
 if ((dmar->hw_ecap & DMAR_ECAP_DI) != 0) {
  if (dmar->qi_enabled)
   dmar_qi_invalidate_iotlb_glob_locked(dmar);
  else
   dmar_inv_iotlb_glob(dmar);
 }
 dmar_unmap_pgtbl(sf);
 domain = ctx->domain;
 dmar_ctx_unlink(ctx);
 free(ctx, M_DMAR_CTX);
 dmar_unref_domain_locked(dmar, domain);
 TD_PINNED_ASSERT;
}
