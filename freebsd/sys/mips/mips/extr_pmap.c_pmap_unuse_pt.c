
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int pmap_t ;
typedef scalar_t__ pd_entry_t ;


 int KASSERT (int,char*) ;
 int MIPS_DIRECT_TO_PHYS (scalar_t__) ;
 int PHYS_TO_VM_PAGE (int ) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int pmap_unwire_ptp (int ,scalar_t__,int ) ;

__attribute__((used)) static int
pmap_unuse_pt(pmap_t pmap, vm_offset_t va, pd_entry_t pde)
{
 vm_page_t mpte;

 if (va >= VM_MAXUSER_ADDRESS)
  return (0);
 KASSERT(pde != 0, ("pmap_unuse_pt: pde != 0"));
 mpte = PHYS_TO_VM_PAGE(MIPS_DIRECT_TO_PHYS(pde));
 return (pmap_unwire_ptp(pmap, va, mpte));
}
