
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_cfe_softc {int store; int dev; } ;
struct bcm_platform {int services; int * nvram_cls; int * nvram_io; } ;
typedef int device_t ;


 int BHND_SERVICE_NVRAM ;
 int KASSERT (int ,char*) ;
 struct bcm_platform* bcm_get_platform () ;
 int bhnd_nvram_store_free (int ) ;
 int bhnd_nvram_store_parse_new (int *,int *,int *) ;
 int bhnd_service_registry_add (int *,int ,int ,int ) ;
 struct bhnd_nvram_cfe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_nvram_cfe_attach(device_t dev)
{
 struct bcm_platform *bp;
 struct bhnd_nvram_cfe_softc *sc;
 int error;

 bp = bcm_get_platform();
 KASSERT(bp->nvram_io != ((void*)0), ("missing NVRAM I/O context"));
 KASSERT(bp->nvram_cls != ((void*)0), ("missing NVRAM class"));

 sc = device_get_softc(dev);
 sc->dev = dev;

 error = bhnd_nvram_store_parse_new(&sc->store, bp->nvram_io,
     bp->nvram_cls);
 if (error)
  return (error);

 error = bhnd_service_registry_add(&bp->services, dev,
     BHND_SERVICE_NVRAM, 0);
 if (error) {
  bhnd_nvram_store_free(sc->store);
  return (error);
 }

 return (error);
}
