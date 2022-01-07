
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_softc {scalar_t__ dev; } ;
typedef scalar_t__ device_t ;


 int CHIPC_QUIRK (struct chipc_softc*,int ) ;
 int Giant ;
 int MUX_SPROM ;
 int M_TEMP ;
 scalar_t__ bhnd_bus_find_hostb_device (scalar_t__) ;
 int device_get_children (scalar_t__,scalar_t__**,int*) ;
 scalar_t__ device_get_parent (scalar_t__) ;
 int device_is_attached (scalar_t__) ;
 scalar_t__ device_is_suspended (scalar_t__) ;
 int free (scalar_t__*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static bool
chipc_should_enable_muxed_sprom(struct chipc_softc *sc)
{
 device_t *devs;
 device_t hostb;
 device_t parent;
 int devcount;
 int error;
 bool result;


 if (!CHIPC_QUIRK(sc, MUX_SPROM))
  return (1);

 mtx_lock(&Giant);

 parent = device_get_parent(sc->dev);
 hostb = bhnd_bus_find_hostb_device(parent);

 if ((error = device_get_children(parent, &devs, &devcount))) {
  mtx_unlock(&Giant);
  return (0);
 }



 result = 1;
 for (int i = 0; i < devcount; i++) {
  if (devs[i] == hostb || devs[i] == sc->dev)
   continue;

  if (!device_is_attached(devs[i]))
   continue;

  if (device_is_suspended(devs[i]))
   continue;


  result = 0;
  break;
 }

 free(devs, M_TEMP);
 mtx_unlock(&Giant);
 return (result);
}
