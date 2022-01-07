
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmem_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int * vmd_kernel_arena; int * vmd_kernel_rwx_arena; } ;


 int KERN_SUCCESS ;
 int M_BESTFIT ;
 int M_EXEC ;
 scalar_t__ __predict_true (int) ;
 int kernel_object ;
 int kmem_back_domain (int,int ,int ,int ,int) ;
 int round_page (int ) ;
 TYPE_1__* vm_dom ;
 scalar_t__ vmem_alloc (int *,int ,int,int *) ;
 int vmem_free (int *,int ,int ) ;

__attribute__((used)) static vm_offset_t
kmem_malloc_domain(int domain, vm_size_t size, int flags)
{
 vmem_t *arena;
 vm_offset_t addr;
 int rv;







 arena = vm_dom[domain].vmd_kernel_arena;

 size = round_page(size);
 if (vmem_alloc(arena, size, flags | M_BESTFIT, &addr))
  return (0);

 rv = kmem_back_domain(domain, kernel_object, addr, size, flags);
 if (rv != KERN_SUCCESS) {
  vmem_free(arena, addr, size);
  return (0);
 }
 return (addr);
}
