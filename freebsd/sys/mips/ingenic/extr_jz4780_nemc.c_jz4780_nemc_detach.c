
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_nemc_softc {int res; int * clk; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int clk_release (int *) ;
 struct jz4780_nemc_softc* device_get_softc (int ) ;
 int jz4780_nemc_spec ;

__attribute__((used)) static int
jz4780_nemc_detach(device_t dev)
{
 struct jz4780_nemc_softc *sc = device_get_softc(dev);

 bus_generic_detach(dev);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 bus_release_resources(dev, jz4780_nemc_spec, sc->res);
 return (0);
}
