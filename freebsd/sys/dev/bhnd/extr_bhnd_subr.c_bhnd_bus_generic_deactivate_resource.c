
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int dummy; } ;
typedef int device_t ;


 int BHND_BUS_DEACTIVATE_RESOURCE (int *,int ,int,int,struct bhnd_resource*) ;
 int EINVAL ;
 int * device_get_parent (int ) ;

int
bhnd_bus_generic_deactivate_resource(device_t dev, device_t child,
    int type, int rid, struct bhnd_resource *r)
{
 if (device_get_parent(dev) != ((void*)0))
  return (BHND_BUS_DEACTIVATE_RESOURCE(device_get_parent(dev),
      child, type, rid, r));

 return (EINVAL);
}
