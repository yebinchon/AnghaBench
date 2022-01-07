
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_2__ {int object; } ;


 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int kstack_pages ;
 int pmap_kextract (scalar_t__) ;
 int vm_thread_stack_dispose (int ,scalar_t__,int ) ;

__attribute__((used)) static void
kstack_release(void *arg, void **store, int cnt)
{
 vm_offset_t ks;
 int i;

 for (i = 0; i < cnt; i++) {
  ks = (vm_offset_t)store[i];
  vm_thread_stack_dispose(
      PHYS_TO_VM_PAGE(pmap_kextract(ks))->object,
      ks, kstack_pages);
 }
}
