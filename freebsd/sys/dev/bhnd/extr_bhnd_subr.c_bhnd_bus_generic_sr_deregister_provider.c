
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_service_registry {int dummy; } ;
typedef int device_t ;
typedef int bhnd_service_t ;


 struct bhnd_service_registry* BHND_BUS_GET_SERVICE_REGISTRY (int ,int ) ;
 int KASSERT (int ,char*) ;
 int bhnd_service_registry_remove (struct bhnd_service_registry*,int ,int ) ;

int
bhnd_bus_generic_sr_deregister_provider(device_t dev, device_t child,
    device_t provider, bhnd_service_t service)
{
 struct bhnd_service_registry *bsr;

 bsr = BHND_BUS_GET_SERVICE_REGISTRY(dev, child);

 KASSERT(bsr != ((void*)0), ("NULL service registry"));

 return (bhnd_service_registry_remove(bsr, provider, service));
}
