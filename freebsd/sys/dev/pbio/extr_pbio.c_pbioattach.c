
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pbio_softc {int iomode; TYPE_1__* pd; int * res; int bsh; int bst; } ;
typedef int device_t ;
struct TYPE_2__ {int port; } ;


 int ENXIO ;
 int IO_PBIOSIZE ;
 int PBIO_NPORTS ;
 int PBIO_PNAME (int) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int ,int ) ;
 struct pbio_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int make_dev (int *,int,int ,int ,int,char*,int,int ) ;
 int pbio_cdevsw ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
pbioattach (device_t dev)
{
 int unit;
 int i;
 int rid;
 struct pbio_softc *sc;

 sc = device_get_softc(dev);
 unit = device_get_unit(dev);
 rid = 0;
 sc->res = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
     IO_PBIOSIZE, RF_ACTIVE);
 if (sc->res == ((void*)0))
  return (ENXIO);
 sc->bst = rman_get_bustag(sc->res);
 sc->bsh = rman_get_bushandle(sc->res);




 sc->iomode = 0x9b;

 for (i = 0; i < PBIO_NPORTS; i++)
  sc->pd[i].port = make_dev(&pbio_cdevsw, (unit << 2) + i, 0, 0,
      0600, "pbio%d%s", unit, PBIO_PNAME(i));
 return (0);
}
