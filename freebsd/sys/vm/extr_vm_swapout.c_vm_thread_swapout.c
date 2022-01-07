
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int vm_object_t ;
struct thread {int td_kstack_pages; int td_kstack; int td_kstack_obj; } ;


 int PQ_LAUNDRY ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int cpu_thread_swapout (struct thread*) ;
 int panic (char*) ;
 int pmap_qremove (int ,int) ;
 int vm_page_dirty (int *) ;
 int * vm_page_lookup (int ,int) ;
 int vm_page_unwire (int *,int ) ;

__attribute__((used)) static void
vm_thread_swapout(struct thread *td)
{
 vm_object_t ksobj;
 vm_page_t m;
 int i, pages;

 cpu_thread_swapout(td);
 pages = td->td_kstack_pages;
 ksobj = td->td_kstack_obj;
 pmap_qremove(td->td_kstack, pages);
 VM_OBJECT_WLOCK(ksobj);
 for (i = 0; i < pages; i++) {
  m = vm_page_lookup(ksobj, i);
  if (m == ((void*)0))
   panic("vm_thread_swapout: kstack already missing?");
  vm_page_dirty(m);
  vm_page_unwire(m, PQ_LAUNDRY);
 }
 VM_OBJECT_WUNLOCK(ksobj);
}
