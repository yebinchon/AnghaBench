
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int direct; int res; } ;
typedef int * device_t ;


 int BHND_BUS_ACTIVATE_RESOURCE (int *,int *,int,int,struct bhnd_resource*) ;
 int ENODEV ;
 int bus_activate_resource (int *,int,int,int ) ;
 int * device_get_parent (int *) ;

int
bhnd_bus_generic_activate_resource(device_t dev, device_t child, int type,
    int rid, struct bhnd_resource *r)
{
 int error;
 bool passthrough;

 passthrough = (device_get_parent(child) != dev);


 if (device_get_parent(dev) != ((void*)0)) {
  error = BHND_BUS_ACTIVATE_RESOURCE(device_get_parent(dev),
      child, type, rid, r);
 } else {
  error = ENODEV;
 }




 if (error && !passthrough) {
  error = bus_activate_resource(child, type, rid, r->res);
  if (!error)
   r->direct = 1;
 }

 return (error);
}
