
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_softc {int dev; } ;
typedef int device_t ;


 int BHND_DEVICE_ORDER_DETACH ;
 int bhnd_bus_free_children (int *) ;
 int bhnd_bus_get_children (int ,int **,int*,int ) ;
 int device_delete_child (int ,int ) ;

__attribute__((used)) static int
bhnd_delete_children(struct bhnd_softc *sc)
{
 device_t *devs;
 int ndevs;
 int error;


 error = bhnd_bus_get_children(sc->dev, &devs, &ndevs,
     BHND_DEVICE_ORDER_DETACH);
 if (error)
  return (error);


 for (int i = 0; i < ndevs; i++) {
  device_t child = devs[i];


  if ((error = device_delete_child(sc->dev, child)))
   goto cleanup;
 }

cleanup:
 bhnd_bus_free_children(devs);
 return (error);
}
