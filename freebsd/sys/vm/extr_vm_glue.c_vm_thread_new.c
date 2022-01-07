
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int * vm_object_t ;
struct thread {int td_kstack_pages; scalar_t__ td_kstack; int * td_kstack_obj; } ;
struct TYPE_2__ {int * object; } ;


 int DOMAINSET_PREF (int ) ;
 int KSTACK_MAX_PAGES ;
 int M_NOWAIT ;
 int PCPU_GET (int ) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int domain ;
 int * kstack_cache ;
 int kstack_pages ;
 int pmap_kextract (scalar_t__) ;
 scalar_t__ uma_zalloc (int *,int ) ;
 scalar_t__ vm_thread_stack_create (int ,int **,int) ;

int
vm_thread_new(struct thread *td, int pages)
{
 vm_object_t ksobj;
 vm_offset_t ks;


 if (pages <= 1)
  pages = kstack_pages;
 else if (pages > KSTACK_MAX_PAGES)
  pages = KSTACK_MAX_PAGES;

 ks = 0;
 ksobj = ((void*)0);
 if (pages == kstack_pages && kstack_cache != ((void*)0)) {
  ks = (vm_offset_t)uma_zalloc(kstack_cache, M_NOWAIT);
  if (ks != 0)
   ksobj = PHYS_TO_VM_PAGE(pmap_kextract(ks))->object;
 }






 if (ks == 0)
  ks = vm_thread_stack_create(DOMAINSET_PREF(PCPU_GET(domain)),
      &ksobj, pages);
 if (ks == 0)
  return (0);
 td->td_kstack_obj = ksobj;
 td->td_kstack = ks;
 td->td_kstack_pages = pages;
 return (1);
}
