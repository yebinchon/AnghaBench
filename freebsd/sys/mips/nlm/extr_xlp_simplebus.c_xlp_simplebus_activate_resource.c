
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
struct resource {int dummy; } ;
typedef int device_t ;
typedef int bus_space_handle_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 void* pmap_mapdev (int ,int ) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_virtual (struct resource*,void*) ;

__attribute__((used)) static int
xlp_simplebus_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 void *vaddr;
 vm_paddr_t paddr;
 vm_size_t psize;




 if (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT) {
  paddr = rman_get_start(r);
  psize = rman_get_size(r);
  vaddr = pmap_mapdev(paddr, psize);

  rman_set_virtual(r, vaddr);
  rman_set_bushandle(r, (bus_space_handle_t)(uintptr_t)vaddr);
 }

 return (rman_activate_resource(r));
}
