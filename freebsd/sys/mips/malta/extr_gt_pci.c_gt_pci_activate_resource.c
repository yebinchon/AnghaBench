
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;
typedef int bus_space_handle_t ;


 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;

__attribute__((used)) static int
gt_pci_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 bus_space_handle_t p;
 int error;

 if ((type == SYS_RES_MEMORY) || (type == SYS_RES_IOPORT)) {
  error = bus_space_map(rman_get_bustag(r),
      rman_get_bushandle(r), rman_get_size(r), 0, &p);
  if (error)
   return (error);
  rman_set_bushandle(r, p);
 }
 return (rman_activate_resource(r));
}
