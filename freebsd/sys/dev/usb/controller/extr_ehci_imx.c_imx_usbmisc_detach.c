
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_usbmisc_softc {int * mmio; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct imx_usbmisc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
imx_usbmisc_detach(device_t dev)
{
 struct imx_usbmisc_softc *sc;

 sc = device_get_softc(dev);

 if (sc->mmio != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mmio);

 return (0);
}
