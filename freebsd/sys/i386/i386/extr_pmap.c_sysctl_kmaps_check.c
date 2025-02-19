
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct sbuf {int dummy; } ;
struct pmap_kernel_map_range {scalar_t__ sva; } ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;


 int PG_G ;
 int PG_PDE_CACHE ;
 int PG_PDE_PAT ;
 int PG_PS ;
 int PG_PTE_CACHE ;
 int PG_PTE_PAT ;
 int PG_RW ;
 int PG_U ;
 int pg_nx ;
 int sysctl_kmaps_dump (struct sbuf*,struct pmap_kernel_map_range*,scalar_t__) ;
 int sysctl_kmaps_match (struct pmap_kernel_map_range*,int) ;
 int sysctl_kmaps_reinit (struct pmap_kernel_map_range*,scalar_t__,int) ;

__attribute__((used)) static void
sysctl_kmaps_check(struct sbuf *sb, struct pmap_kernel_map_range *range,
    vm_offset_t va, pd_entry_t pde, pt_entry_t pte)
{
 pt_entry_t attrs;

 attrs = pde & (PG_RW | PG_U | pg_nx);

 if ((pde & PG_PS) != 0) {
  attrs |= pde & (PG_G | PG_PDE_CACHE);
 } else if (pte != 0) {
  attrs |= pte & pg_nx;
  attrs &= pg_nx | (pte & (PG_RW | PG_U));
  attrs |= pte & (PG_G | PG_PTE_CACHE);


  if ((attrs & PG_PTE_PAT) != 0)
   attrs ^= PG_PDE_PAT | PG_PTE_PAT;
 }

 if (range->sva > va || !sysctl_kmaps_match(range, attrs)) {
  sysctl_kmaps_dump(sb, range, va);
  sysctl_kmaps_reinit(range, va, attrs);
 }
}
