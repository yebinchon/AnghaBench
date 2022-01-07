
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int LOW_MEM_LIMIT ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int VM_MEMATTR_DEFAULT ;
 struct resource* bus_alloc_resource (int ,int ,int*,int ,int ,size_t,int ) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int vm_phys_fictitious_reg_range (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static struct resource *
xenpv_alloc_physmem(device_t dev, device_t child, int *res_id, size_t size)
{
 struct resource *res;
 vm_paddr_t phys_addr;
 int error;

 res = bus_alloc_resource(child, SYS_RES_MEMORY, res_id, LOW_MEM_LIMIT,
     ~0, size, RF_ACTIVE);
 if (res == ((void*)0))
  return (((void*)0));

 phys_addr = rman_get_start(res);
 error = vm_phys_fictitious_reg_range(phys_addr, phys_addr + size,
     VM_MEMATTR_DEFAULT);
 if (error) {
  bus_release_resource(child, SYS_RES_MEMORY, *res_id, res);
  return (((void*)0));
 }

 return (res);
}
