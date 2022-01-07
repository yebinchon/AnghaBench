
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;



 int bus_generic_activate_resource (int ,int ,int,int,struct resource*) ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int rman_activate_resource (struct resource*) ;
 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;

__attribute__((used)) static int
octopci_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
 bus_space_handle_t bh;
 int error;

 switch (type) {
 case 129:
  error = bus_generic_activate_resource(bus, child, type, rid,
            res);
  if (error != 0)
   return (error);
  return (0);
 case 128:
 case 130:
  error = bus_space_map(rman_get_bustag(res),
      rman_get_bushandle(res), rman_get_size(res), 0, &bh);
  if (error != 0)
   return (error);
  rman_set_bushandle(res, bh);
  break;
 default:
  return (ENXIO);
 }

 error = rman_activate_resource(res);
 if (error != 0)
  return (error);
 return (0);
}
