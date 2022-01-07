
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic_softc {int res; int xchan; } ;
typedef int device_t ;


 int aic_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct aic_softc* device_get_softc (int ) ;
 int xdma_channel_free (int ) ;

__attribute__((used)) static int
aic_detach(device_t dev)
{
 struct aic_softc *sc;

 sc = device_get_softc(dev);

 xdma_channel_free(sc->xchan);

 bus_release_resources(dev, aic_spec, sc->res);

 return (0);
}
