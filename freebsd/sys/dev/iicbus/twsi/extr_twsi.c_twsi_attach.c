
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twsi_softc {int * iicbus; int res; int mutex; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_generic_attach (int ) ;
 int config_intrhook_oneshot (int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct twsi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int ) ;
 int res_spec ;
 int twsi_detach (int ) ;
 int twsi_intr_start ;

int
twsi_attach(device_t dev)
{
 struct twsi_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 mtx_init(&sc->mutex, device_get_nameunit(dev), "twsi", MTX_DEF);

 if (bus_alloc_resources(dev, res_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  twsi_detach(dev);
  return (ENXIO);
 }


 if ((sc->iicbus = device_add_child(dev, "iicbus", -1)) == ((void*)0)) {
  device_printf(dev, "could not allocate iicbus instance\n");
  twsi_detach(dev);
  return (ENXIO);
 }
 bus_generic_attach(dev);

 config_intrhook_oneshot(twsi_intr_start, dev);

 return (0);
}
