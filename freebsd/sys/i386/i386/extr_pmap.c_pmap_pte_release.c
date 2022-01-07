
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;


 int * PADDR2 ;
 int PAGE_MASK ;
 int PMAP2mutex ;
 int mtx_unlock (int *) ;

__attribute__((used)) static __inline void
pmap_pte_release(pt_entry_t *pte)
{

 if ((pt_entry_t *)((vm_offset_t)pte & ~PAGE_MASK) == PADDR2)
  mtx_unlock(&PMAP2mutex);
}
