
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpd_softc {int ctx; scalar_t__ res; int rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct vpd_softc* device_get_softc (int ) ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static int
vpd_detach (device_t dev)
{
 struct vpd_softc *sc;

 sc = device_get_softc(dev);

 if (sc->res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->rid, sc->res);

 sysctl_ctx_free(&sc->ctx);

 return (0);
}
