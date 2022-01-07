
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;
typedef int int8_t ;


 int CTR6 (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int KTR_PMAP ;
 int MMU_ENTER (int ,int ,int ,int ,int ,int ,int ) ;
 int mmu_obj ;

int
pmap_enter(pmap_t pmap, vm_offset_t va, vm_page_t p, vm_prot_t prot,
    u_int flags, int8_t psind)
{

 CTR6(KTR_PMAP, "pmap_enter(%p, %#x, %p, %#x, %#x, %d)", pmap, va,
     p, prot, flags, psind);
 return (MMU_ENTER(mmu_obj, pmap, va, p, prot, flags, psind));
}
