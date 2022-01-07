
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BHND_DEVICE_ORDER_DETACH ;
 int EBUSY ;
 int bhnd_bus_free_children (int *) ;
 int bhnd_bus_get_children (int ,int **,int*,int ) ;
 int device_is_attached (int ) ;
 int device_shutdown (int ) ;

int
bhnd_generic_shutdown(device_t dev)
{
 device_t *devs;
 int ndevs;
 int error;

 if (!device_is_attached(dev))
  return (EBUSY);


 error = bhnd_bus_get_children(dev, &devs, &ndevs,
     BHND_DEVICE_ORDER_DETACH);
 if (error)
  return (error);


 for (int i = 0; i < ndevs; i++) {
  device_t child = devs[i];


  if ((error = device_shutdown(child)))
   goto cleanup;
 }

cleanup:
 bhnd_bus_free_children(devs);
 return (error);
}
