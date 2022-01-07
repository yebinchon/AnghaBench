
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int vm_object_t ;
struct thread {int td_kstack_pages; scalar_t__ td_kstack; int td_kstack_obj; } ;


 int kstack_cache ;
 int kstack_pages ;
 int uma_zfree (int ,void*) ;
 int vm_thread_stack_dispose (int ,scalar_t__,int) ;

void
vm_thread_dispose(struct thread *td)
{
 vm_object_t ksobj;
 vm_offset_t ks;
 int pages;

 pages = td->td_kstack_pages;
 ksobj = td->td_kstack_obj;
 ks = td->td_kstack;
 td->td_kstack = 0;
 td->td_kstack_pages = 0;
 if (pages == kstack_pages)
  uma_zfree(kstack_cache, (void *)ks);
 else
  vm_thread_stack_dispose(ksobj, ks, pages);
}
