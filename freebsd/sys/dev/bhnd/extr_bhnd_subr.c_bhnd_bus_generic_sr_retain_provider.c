
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_service_registry {int dummy; } ;
typedef int * device_t ;
typedef int bhnd_service_t ;


 struct bhnd_service_registry* BHND_BUS_GET_SERVICE_REGISTRY (int *,int *) ;
 int BHND_BUS_RELEASE_PROVIDER (int *,int *,int *,int ) ;
 int * BHND_BUS_RETAIN_PROVIDER (int *,int *,int ) ;
 int BHND_SPF_INHERITED ;
 int EEXIST ;
 int KASSERT (int ,char*) ;
 int bhnd_service_registry_add (struct bhnd_service_registry*,int *,int ,int ) ;
 int * bhnd_service_registry_retain (struct bhnd_service_registry*,int ) ;
 int * device_get_parent (int *) ;
 int device_printf (int *,char*,int) ;

device_t
bhnd_bus_generic_sr_retain_provider(device_t dev, device_t child,
    bhnd_service_t service)
{
 struct bhnd_service_registry *bsr;
 device_t parent, provider;
 int error;

 bsr = BHND_BUS_GET_SERVICE_REGISTRY(dev, child);
 KASSERT(bsr != ((void*)0), ("NULL service registry"));
 while (1) {

  provider = bhnd_service_registry_retain(bsr, service);
  if (provider != ((void*)0))
   return (provider);


  if ((parent = device_get_parent(dev)) == ((void*)0))
   return (((void*)0));

  provider = BHND_BUS_RETAIN_PROVIDER(parent, dev, service);
  if (provider == ((void*)0))
   return (((void*)0));



  error = bhnd_service_registry_add(bsr, provider, service,
      BHND_SPF_INHERITED);
  if (error) {
   BHND_BUS_RELEASE_PROVIDER(parent, dev, provider,
       service);
   if (error == EEXIST) {



    continue;
   }

   device_printf(dev, "failed to register service "
       "provider: %d\n", error);
   return (((void*)0));
  }
 }
}
