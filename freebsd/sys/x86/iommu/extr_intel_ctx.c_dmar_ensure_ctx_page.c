
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vm_page_t ;
struct sf_buf {int dummy; } ;
struct dmar_unit {int ctx_obj; } ;
struct TYPE_4__ {int r1; } ;
typedef TYPE_1__ dmar_root_entry_t ;


 int DMAR_PGF_NOALLOC ;
 int DMAR_PGF_WAITOK ;
 int DMAR_PGF_ZERO ;
 int DMAR_ROOT_R1_CTP_MASK ;
 int DMAR_ROOT_R1_P ;
 int TD_PINNED_ASSERT ;
 int TD_PREP_PINNED_ASSERT ;
 int VM_PAGE_TO_PHYS (int *) ;
 int dmar_flush_root_to_ram (struct dmar_unit*,TYPE_1__*) ;
 TYPE_1__* dmar_map_pgtbl (int ,int ,int,struct sf_buf**) ;
 int * dmar_pgalloc (int ,int,int) ;
 int dmar_pte_store (int *,int) ;
 int dmar_unmap_pgtbl (struct sf_buf*) ;

__attribute__((used)) static void
dmar_ensure_ctx_page(struct dmar_unit *dmar, int bus)
{
 struct sf_buf *sf;
 dmar_root_entry_t *re;
 vm_page_t ctxm;




 ctxm = dmar_pgalloc(dmar->ctx_obj, 1 + bus, DMAR_PGF_NOALLOC);
 if (ctxm != ((void*)0))
  return;







 TD_PREP_PINNED_ASSERT;
 ctxm = dmar_pgalloc(dmar->ctx_obj, 1 + bus, DMAR_PGF_ZERO |
     DMAR_PGF_WAITOK);
 re = dmar_map_pgtbl(dmar->ctx_obj, 0, DMAR_PGF_NOALLOC, &sf);
 re += bus;
 dmar_pte_store(&re->r1, DMAR_ROOT_R1_P | (DMAR_ROOT_R1_CTP_MASK &
     VM_PAGE_TO_PHYS(ctxm)));
 dmar_flush_root_to_ram(dmar, re);
 dmar_unmap_pgtbl(sf);
 TD_PINNED_ASSERT;
}
