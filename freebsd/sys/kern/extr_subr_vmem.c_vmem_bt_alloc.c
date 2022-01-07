
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vmem_addr_t ;
typedef int vm_size_t ;
typedef int uma_zone_t ;
typedef int uint8_t ;
struct TYPE_2__ {int vmd_kernel_arena; } ;


 int M_BESTFIT ;
 int M_NOVM ;
 int M_NOWAIT ;
 int M_USE_RESERVE ;
 int M_WAITOK ;
 int UMA_SLAB_KERNEL ;
 int VMEM_ADDR_MAX ;
 int VMEM_ADDR_MIN ;
 int kernel_object ;
 scalar_t__ kmem_back_domain (int,int ,scalar_t__,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pause (char*,int) ;
 TYPE_1__* vm_dom ;
 int vm_wait_domain (int) ;
 int vmem_bt_lock ;
 scalar_t__ vmem_xalloc (int ,int ,int ,int ,int ,int ,int ,int,scalar_t__*) ;
 int vmem_xfree (int ,scalar_t__,int ) ;

__attribute__((used)) static void *
vmem_bt_alloc(uma_zone_t zone, vm_size_t bytes, int domain, uint8_t *pflag,
    int wait)
{
 vmem_addr_t addr;

 *pflag = UMA_SLAB_KERNEL;





 mtx_lock(&vmem_bt_lock);
 if (vmem_xalloc(vm_dom[domain].vmd_kernel_arena, bytes, 0, 0, 0,
     VMEM_ADDR_MIN, VMEM_ADDR_MAX,
     M_NOWAIT | M_NOVM | M_USE_RESERVE | M_BESTFIT, &addr) == 0) {
  if (kmem_back_domain(domain, kernel_object, addr, bytes,
      M_NOWAIT | M_USE_RESERVE) == 0) {
   mtx_unlock(&vmem_bt_lock);
   return ((void *)addr);
  }
  vmem_xfree(vm_dom[domain].vmd_kernel_arena, addr, bytes);
  mtx_unlock(&vmem_bt_lock);




  if (wait & M_WAITOK)
   vm_wait_domain(domain);
  return (((void*)0));
 }
 mtx_unlock(&vmem_bt_lock);



 if (wait & M_WAITOK)
  pause("btalloc", 1);

 return (((void*)0));
}
