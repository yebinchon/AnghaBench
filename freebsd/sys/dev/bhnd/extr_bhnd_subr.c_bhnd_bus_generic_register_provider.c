
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int bhnd_service_t ;


 int BHND_BUS_REGISTER_PROVIDER (int *,int *,int *,int ) ;
 int ENXIO ;
 int * device_get_parent (int *) ;

int
bhnd_bus_generic_register_provider(device_t dev, device_t child,
    device_t provider, bhnd_service_t service)
{
 device_t parent = device_get_parent(dev);

 if (parent != ((void*)0)) {
  return (BHND_BUS_REGISTER_PROVIDER(parent, child,
      provider, service));
 }

 return (ENXIO);
}
