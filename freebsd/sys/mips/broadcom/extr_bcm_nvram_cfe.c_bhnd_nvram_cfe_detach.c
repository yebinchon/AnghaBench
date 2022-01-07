
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_cfe_softc {int store; } ;
struct bcm_platform {int services; } ;
typedef int device_t ;


 int BHND_SERVICE_ANY ;
 struct bcm_platform* bcm_get_platform () ;
 int bhnd_nvram_store_free (int ) ;
 int bhnd_service_registry_remove (int *,int ,int ) ;
 struct bhnd_nvram_cfe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_nvram_cfe_detach(device_t dev)
{
 struct bcm_platform *bp;
 struct bhnd_nvram_cfe_softc *sc;
 int error;

 bp = bcm_get_platform();
 sc = device_get_softc(dev);

 error = bhnd_service_registry_remove(&bp->services, dev,
     BHND_SERVICE_ANY);
 if (error)
  return (error);

 bhnd_nvram_store_free(sc->store);

 return (0);
}
