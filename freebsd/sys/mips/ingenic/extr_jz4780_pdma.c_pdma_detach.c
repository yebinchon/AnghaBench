
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdma_softc {int res; } ;
typedef int device_t ;


 int bus_release_resources (int ,int ,int ) ;
 struct pdma_softc* device_get_softc (int ) ;
 int pdma_spec ;

__attribute__((used)) static int
pdma_detach(device_t dev)
{
 struct pdma_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resources(dev, pdma_spec, sc->res);

 return (0);
}
