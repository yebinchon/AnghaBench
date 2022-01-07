
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_offset_t ;
struct tte {int tte_data; } ;
typedef scalar_t__ pmap_t ;


 int * PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_UNLOCK (scalar_t__) ;
 int TD_SW ;
 int TD_V ;
 int TLB_DIRECT_TO_PHYS (int ) ;
 int TTE_GET_PA (struct tte*) ;
 int VM_MIN_DIRECT_ADDRESS ;
 int VM_PROT_WRITE ;
 scalar_t__ kernel_pmap ;
 struct tte* tsb_kvtotte (int ) ;
 struct tte* tsb_tte_lookup (scalar_t__,int ) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
pmap_extract_and_hold(pmap_t pm, vm_offset_t va, vm_prot_t prot)
{
 struct tte *tp;
 vm_page_t m;

 m = ((void*)0);
 PMAP_LOCK(pm);
 if (pm == kernel_pmap) {
  if (va >= VM_MIN_DIRECT_ADDRESS) {
   tp = ((void*)0);
   m = PHYS_TO_VM_PAGE(TLB_DIRECT_TO_PHYS(va));
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  } else {
   tp = tsb_kvtotte(va);
   if ((tp->tte_data & TD_V) == 0)
    tp = ((void*)0);
  }
 } else
  tp = tsb_tte_lookup(pm, va);
 if (tp != ((void*)0) && ((tp->tte_data & TD_SW) ||
     (prot & VM_PROT_WRITE) == 0)) {
  m = PHYS_TO_VM_PAGE(TTE_GET_PA(tp));
  if (!vm_page_wire_mapped(m))
   m = ((void*)0);
 }
 PMAP_UNLOCK(pm);
 return (m);
}
