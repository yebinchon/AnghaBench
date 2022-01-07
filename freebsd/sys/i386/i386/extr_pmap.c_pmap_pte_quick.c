
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_2__ {scalar_t__ td_pinned; } ;


 int KASSERT (int,char*) ;
 int NPTEPG ;
 int* PADDR1 ;
 scalar_t__ PCPU_GET (int ) ;
 int PG_A ;
 int PG_FRAME ;
 int PG_M ;
 int PG_PS ;
 int PG_RW ;
 int PG_V ;
 int* PMAP1 ;
 int PMAP1changed ;
 int PMAP1changedcpu ;
 scalar_t__ PMAP1cpu ;
 int PMAP1unchanged ;
 int RA_WLOCKED ;
 int cpuid ;
 TYPE_1__* curthread ;
 int i386_btop (int ) ;
 int invlcaddr (int*) ;
 scalar_t__ pmap_is_current (int ) ;
 int* pmap_pde (int ,int ) ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 int* vtopte (int ) ;

__attribute__((used)) static pt_entry_t *
pmap_pte_quick(pmap_t pmap, vm_offset_t va)
{
 pd_entry_t newpf;
 pd_entry_t *pde;

 pde = pmap_pde(pmap, va);
 if (*pde & PG_PS)
  return (pde);
 if (*pde != 0) {

  if (pmap_is_current(pmap))
   return (vtopte(va));
  rw_assert(&pvh_global_lock, RA_WLOCKED);
  KASSERT(curthread->td_pinned > 0, ("curthread not pinned"));
  newpf = *pde & PG_FRAME;
  if ((*PMAP1 & PG_FRAME) != newpf) {
   *PMAP1 = newpf | PG_RW | PG_V | PG_A | PG_M;



   invlcaddr(PADDR1);
   PMAP1changed++;
  } else







   PMAP1unchanged++;
  return (PADDR1 + (i386_btop(va) & (NPTEPG - 1)));
 }
 return (0);
}
