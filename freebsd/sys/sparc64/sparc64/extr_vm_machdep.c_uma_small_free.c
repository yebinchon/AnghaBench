
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int8_t ;


 int PHYS_TO_VM_PAGE (int ) ;
 int PMAP_STATS_INC (int ) ;
 int TLB_DIRECT_TO_PHYS (int ) ;
 int uma_nsmall_free ;
 int vm_page_free (int ) ;
 int vm_page_unwire_noq (int ) ;

void
uma_small_free(void *mem, vm_size_t size, u_int8_t flags)
{
 vm_page_t m;

 PMAP_STATS_INC(uma_nsmall_free);
 m = PHYS_TO_VM_PAGE(TLB_DIRECT_TO_PHYS((vm_offset_t)mem));
 vm_page_unwire_noq(m);
 vm_page_free(m);
}
