
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_generic_deactivate_resource (int ,int ,int,int,struct resource*) ;
 int pmap_unmapdev (int ,int ) ;
 int rman_deactivate_resource (struct resource*) ;
 int rman_get_size (struct resource*) ;
 scalar_t__ rman_get_virtual (struct resource*) ;

__attribute__((used)) static int
ofw_pci_deactivate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
 vm_size_t psize;

 if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY) {
  return (bus_generic_deactivate_resource(bus, child, type, rid,
      res));
 }

 psize = rman_get_size(res);
 pmap_unmapdev((vm_offset_t)rman_get_virtual(res), psize);

 return (rman_deactivate_resource(res));
}
