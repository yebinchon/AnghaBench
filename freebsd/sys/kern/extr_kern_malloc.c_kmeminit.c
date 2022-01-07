
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int v_page_count; } ;


 int PAGE_SIZE ;
 int VM_KMEM_SIZE ;
 int VM_KMEM_SIZE_MAX ;
 int VM_KMEM_SIZE_MIN ;
 int VM_KMEM_SIZE_SCALE ;
 int kernel_arena ;
 int kernel_map ;
 int kmem_zmax ;
 int memguard_fudge (int,int ) ;
 int memguard_init (int ) ;
 int panic (char*) ;
 int round_page (int) ;
 int uma_set_limit (int) ;
 TYPE_1__ vm_cnt ;
 int vm_kmem_size ;
 int vm_kmem_size_max ;
 int vm_kmem_size_min ;
 int vm_kmem_size_scale ;

void
kmeminit(void)
{
 u_long mem_size;
 u_long tmp;
 mem_size = vm_cnt.v_page_count;
 if (mem_size <= 32768)
  kmem_zmax = PAGE_SIZE;

 if (vm_kmem_size_scale < 1)
  vm_kmem_size_scale = VM_KMEM_SIZE_SCALE;





 if (vm_kmem_size == 0) {
  vm_kmem_size = mem_size / vm_kmem_size_scale;
  vm_kmem_size = vm_kmem_size * PAGE_SIZE < vm_kmem_size ?
      vm_kmem_size_max : vm_kmem_size * PAGE_SIZE;
  if (vm_kmem_size_min > 0 && vm_kmem_size < vm_kmem_size_min)
   vm_kmem_size = vm_kmem_size_min;
  if (vm_kmem_size_max > 0 && vm_kmem_size >= vm_kmem_size_max)
   vm_kmem_size = vm_kmem_size_max;
 }
 if (vm_kmem_size == 0)
  panic("Tune VM_KMEM_SIZE_* for the platform");
 if (vm_kmem_size / 2 / PAGE_SIZE > mem_size)
  vm_kmem_size = 2 * mem_size * PAGE_SIZE;

 vm_kmem_size = round_page(vm_kmem_size);



 tmp = vm_kmem_size;

 uma_set_limit(tmp);
}
