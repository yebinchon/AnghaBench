
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_sprom_softc {int store; } ;
typedef int device_t ;


 int BHND_SERVICE_ANY ;
 int bhnd_deregister_provider (int ,int ) ;
 int bhnd_nvram_store_free (int ) ;
 struct bhnd_sprom_softc* device_get_softc (int ) ;

int
bhnd_sprom_detach(device_t dev)
{
 struct bhnd_sprom_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bhnd_deregister_provider(dev, BHND_SERVICE_ANY)))
  return (error);

 bhnd_nvram_store_free(sc->store);

 return (0);
}
