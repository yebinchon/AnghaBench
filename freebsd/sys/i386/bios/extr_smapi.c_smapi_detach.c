
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smapi_softc {scalar_t__ res; int rid; int cdev; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int destroy_dev (int ) ;
 struct smapi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
smapi_detach (device_t dev)
{
 struct smapi_softc *sc;

 sc = device_get_softc(dev);

 destroy_dev(sc->cdev);

 if (sc->res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->rid, sc->res);

 return (0);
}
