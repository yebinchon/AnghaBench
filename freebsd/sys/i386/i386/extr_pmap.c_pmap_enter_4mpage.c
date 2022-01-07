
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
typedef scalar_t__ pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {int pat_mode; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;


 scalar_t__ KERN_SUCCESS ;
 int MA_OWNED ;
 int PG_MANAGED ;
 int PG_PS ;
 int PG_U ;
 int PG_V ;
 int PMAP_ENTER_NORECLAIM ;
 int PMAP_ENTER_NOREPLACE ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (scalar_t__,int ) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int VM_PROT_EXECUTE ;
 int VPO_UNMANAGED ;
 int i386_read_exec ;
 scalar_t__ kernel_pmap ;
 int pg_nx ;
 int pmap_cache_bits (scalar_t__,int ,int) ;
 scalar_t__ pmap_enter_pde (scalar_t__,int ,int,int,int *) ;

__attribute__((used)) static bool
pmap_enter_4mpage(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{
 pd_entry_t newpde;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 newpde = VM_PAGE_TO_PHYS(m) | pmap_cache_bits(pmap, m->md.pat_mode, 1) |
     PG_PS | PG_V;
 if ((m->oflags & VPO_UNMANAGED) == 0)
  newpde |= PG_MANAGED;




 if (pmap != kernel_pmap)
  newpde |= PG_U;
 return (pmap_enter_pde(pmap, va, newpde, PMAP_ENTER_NOSLEEP |
     PMAP_ENTER_NOREPLACE | PMAP_ENTER_NORECLAIM, ((void*)0)) ==
     KERN_SUCCESS);
}
