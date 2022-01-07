
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pbio_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;
struct TYPE_2__ {int * res; } ;


 int ENXIO ;
 int IO_PBIOSIZE ;
 int PBIO_CFG ;
 int PBIO_PORTA ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int ,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct pbio_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ isa_get_logicalid (int ) ;
 int pbinb (struct pbio_softc*,int ) ;
 int pboutb (struct pbio_softc*,int ,int) ;
 int printf (char*,unsigned char,...) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_start (int *) ;
 TYPE_1__* sc ;

__attribute__((used)) static int
pbioprobe(device_t dev)
{
 int rid;
 struct pbio_softc *scp = device_get_softc(dev);




 if (isa_get_logicalid(dev))
  return (ENXIO);
 rid = 0;
 scp->res = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
     IO_PBIOSIZE, RF_ACTIVE);
 if (scp->res == ((void*)0))
  return (ENXIO);
 device_set_desc(dev, "Intel 8255 PPI (basic mode)");


 bus_release_resource(dev, SYS_RES_IOPORT, rid, scp->res);
 return (0);
}
