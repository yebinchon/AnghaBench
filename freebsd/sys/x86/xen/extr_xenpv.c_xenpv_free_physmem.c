
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 size_t rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int vm_phys_fictitious_unreg_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
xenpv_free_physmem(device_t dev, device_t child, int res_id, struct resource *res)
{
 vm_paddr_t phys_addr;
 size_t size;

 phys_addr = rman_get_start(res);
 size = rman_get_size(res);

 vm_phys_fictitious_unreg_range(phys_addr, phys_addr + size);
 return (bus_release_resource(child, SYS_RES_MEMORY, res_id, res));
}
