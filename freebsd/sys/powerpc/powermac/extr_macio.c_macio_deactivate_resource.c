
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int32_t ;
struct resource {int dummy; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int pmap_unmapdev (int ,int ) ;
 int rman_deactivate_resource (struct resource*) ;
 int rman_get_size (struct resource*) ;
 scalar_t__ rman_get_virtual (struct resource*) ;

__attribute__((used)) static int
macio_deactivate_resource(device_t bus, device_t child, int type, int rid,
     struct resource *res)
{



        if ((type == SYS_RES_MEMORY) || (type == SYS_RES_IOPORT)) {
  u_int32_t psize;

  psize = rman_get_size(res);
  pmap_unmapdev((vm_offset_t)rman_get_virtual(res), psize);
 }

 return (rman_deactivate_resource(res));
}
