
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_page_t ;
struct dmar_unit {int hw_ecap; int unit; } ;
struct dmar_domain {int awlvl; int flags; int * pgtbl_obj; int domain; struct dmar_unit* dmar; } ;
struct TYPE_5__ {int owner; } ;
struct dmar_ctx {TYPE_1__ ctx_tag; struct dmar_domain* domain; } ;
struct TYPE_6__ {scalar_t__ ctx1; scalar_t__ ctx2; } ;
typedef TYPE_2__ dmar_ctx_entry_t ;


 int DMAR_CTX1_ASR_MASK ;
 int DMAR_CTX1_P ;
 int DMAR_CTX1_T_PASS ;
 int DMAR_CTX1_T_UNTR ;
 int DMAR_CTX2_DID (int ) ;
 int DMAR_DOMAIN_IDMAP ;
 int DMAR_ECAP_PT ;
 int DMAR_PGF_NOALLOC ;
 int KASSERT (int,char*) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int dmar_flush_ctx_to_ram (struct dmar_unit*,TYPE_2__*) ;
 int dmar_pgalloc (int *,int ,int ) ;
 int dmar_pte_store1 (scalar_t__*,int) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static void
ctx_id_entry_init(struct dmar_ctx *ctx, dmar_ctx_entry_t *ctxp, bool move)
{
 struct dmar_unit *unit;
 struct dmar_domain *domain;
 vm_page_t ctx_root;

 domain = ctx->domain;
 unit = domain->dmar;
 KASSERT(move || (ctxp->ctx1 == 0 && ctxp->ctx2 == 0),
     ("dmar%d: initialized ctx entry %d:%d:%d 0x%jx 0x%jx",
     unit->unit, pci_get_bus(ctx->ctx_tag.owner),
     pci_get_slot(ctx->ctx_tag.owner),
     pci_get_function(ctx->ctx_tag.owner),
     ctxp->ctx1, ctxp->ctx2));
 dmar_pte_store1(&ctxp->ctx2, DMAR_CTX2_DID(domain->domain) |
     domain->awlvl);
 if ((domain->flags & DMAR_DOMAIN_IDMAP) != 0 &&
     (unit->hw_ecap & DMAR_ECAP_PT) != 0) {
  KASSERT(domain->pgtbl_obj == ((void*)0),
      ("ctx %p non-null pgtbl_obj", ctx));
  dmar_pte_store1(&ctxp->ctx1, DMAR_CTX1_T_PASS | DMAR_CTX1_P);
 } else {
  ctx_root = dmar_pgalloc(domain->pgtbl_obj, 0, DMAR_PGF_NOALLOC);
  dmar_pte_store1(&ctxp->ctx1, DMAR_CTX1_T_UNTR |
      (DMAR_CTX1_ASR_MASK & VM_PAGE_TO_PHYS(ctx_root)) |
      DMAR_CTX1_P);
 }
 dmar_flush_ctx_to_ram(unit, ctxp);
}
