
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powermac_nvram_softc {int * sc_cdev; scalar_t__ sc_bank0; } ;
typedef int device_t ;


 int NVRAM_SIZE ;
 int destroy_dev (int *) ;
 struct powermac_nvram_softc* device_get_softc (int ) ;
 int pmap_unmapdev (scalar_t__,int) ;

__attribute__((used)) static int
powermac_nvram_detach(device_t dev)
{
 struct powermac_nvram_softc *sc;

 sc = device_get_softc(dev);

 if ((void *)sc->sc_bank0 != ((void*)0))
  pmap_unmapdev(sc->sc_bank0, NVRAM_SIZE * 2);

 if (sc->sc_cdev != ((void*)0))
  destroy_dev(sc->sc_cdev);

 return 0;
}
