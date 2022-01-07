
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_object_t ;
struct vmem {int dummy; } ;
struct TYPE_10__ {struct vmem* vmd_kernel_arena; struct vmem* vmd_kernel_rwx_arena; } ;
struct TYPE_9__ {int oflags; } ;


 int KASSERT (int,char*) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int VM_OBJECT_WLOCK (scalar_t__) ;
 int VM_OBJECT_WUNLOCK (scalar_t__) ;
 int VPO_KMEM_EXEC ;
 scalar_t__ __predict_true (int) ;
 int atop (scalar_t__) ;
 scalar_t__ kernel_object ;
 int kernel_pmap ;
 int pmap_remove (int ,scalar_t__,scalar_t__) ;
 TYPE_8__* vm_dom ;
 int vm_page_free (TYPE_1__*) ;
 TYPE_1__* vm_page_lookup (scalar_t__,int ) ;
 TYPE_1__* vm_page_next (TYPE_1__*) ;
 int vm_page_unwire_noq (TYPE_1__*) ;
 int vm_phys_domain (TYPE_1__*) ;

__attribute__((used)) static struct vmem *
_kmem_unback(vm_object_t object, vm_offset_t addr, vm_size_t size)
{
 struct vmem *arena;
 vm_page_t m, next;
 vm_offset_t end, offset;
 int domain;

 KASSERT(object == kernel_object,
     ("kmem_unback: only supports kernel object."));

 if (size == 0)
  return (((void*)0));
 pmap_remove(kernel_pmap, addr, addr + size);
 offset = addr - VM_MIN_KERNEL_ADDRESS;
 end = offset + size;
 VM_OBJECT_WLOCK(object);
 m = vm_page_lookup(object, atop(offset));
 domain = vm_phys_domain(m);






 arena = vm_dom[domain].vmd_kernel_arena;

 for (; offset < end; offset += PAGE_SIZE, m = next) {
  next = vm_page_next(m);
  vm_page_unwire_noq(m);
  vm_page_free(m);
 }
 VM_OBJECT_WUNLOCK(object);

 return (arena);
}
