
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct resource_map {int r_size; int r_vaddr; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int EINVAL ;


 int pmap_unmapdev (int ,int ) ;

__attribute__((used)) static int
nexus_unmap_resource(device_t bus, device_t child, int type, struct resource *r,
    struct resource_map *map)
{




 switch (type) {
 case 128:
  pmap_unmapdev((vm_offset_t)map->r_vaddr, map->r_size);

 case 129:
  break;
 default:
  return (EINVAL);
 }
 return (0);
}
