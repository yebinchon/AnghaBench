
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int bhnd_service_t ;


 int * BHND_BUS_RETAIN_PROVIDER (int *,int *,int ) ;
 int * device_get_parent (int *) ;

device_t
bhnd_bus_generic_retain_provider(device_t dev, device_t child,
    bhnd_service_t service)
{
 device_t parent = device_get_parent(dev);

 if (parent != ((void*)0)) {
  return (BHND_BUS_RETAIN_PROVIDER(parent, child,
      service));
 }

 return (((void*)0));
}
