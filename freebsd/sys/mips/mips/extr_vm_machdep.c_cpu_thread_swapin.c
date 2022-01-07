
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* md_upte; } ;
struct thread {TYPE_1__ td_md; scalar_t__ td_kstack; } ;
typedef int pt_entry_t ;


 int KSTACK_PAGES ;
 int PAGE_SIZE ;
 int TLBLO_SWBITS_MASK ;
 int kernel_pmap ;
 int* pmap_pte (int ,scalar_t__) ;

void
cpu_thread_swapin(struct thread *td)
{
 pt_entry_t *pte;
 int i;







 for (i = 0; i < KSTACK_PAGES; i++) {
  pte = pmap_pte(kernel_pmap, td->td_kstack + i * PAGE_SIZE);
  td->td_md.md_upte[i] = *pte & ~TLBLO_SWBITS_MASK;
 }
}
