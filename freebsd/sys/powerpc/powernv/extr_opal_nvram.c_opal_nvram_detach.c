
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_nvram_softc {int * sc_buf; int * sc_cdev; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int NVRAM_BUFSIZE ;
 int contigfree (int *,int ,int ) ;
 int destroy_dev (int *) ;
 struct opal_nvram_softc* device_get_softc (int ) ;

__attribute__((used)) static int
opal_nvram_detach(device_t dev)
{
 struct opal_nvram_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_cdev != ((void*)0))
  destroy_dev(sc->sc_cdev);
 if (sc->sc_buf != ((void*)0))
  contigfree(sc->sc_buf, NVRAM_BUFSIZE, M_DEVBUF);

 return (0);
}
