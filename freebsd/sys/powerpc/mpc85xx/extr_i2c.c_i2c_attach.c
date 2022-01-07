
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int mutex; int * iicbus; int * res; int bsh; int bst; scalar_t__ rid; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int IIC_NOERR ;
 int MTX_DEF ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
i2c_attach(device_t dev)
{
 struct i2c_softc *sc;
 sc = device_get_softc(dev);

 sc->dev = dev;
 sc->rid = 0;

 mtx_init(&sc->mutex, device_get_nameunit(dev), "I2C", MTX_DEF);

 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->rid,
     RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "could not allocate resources");
  mtx_destroy(&sc->mutex);
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->res);
 sc->bsh = rman_get_bushandle(sc->res);

 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(dev, "could not add iicbus child");
  mtx_destroy(&sc->mutex);
  return (ENXIO);
 }

 bus_generic_attach(dev);
 return (IIC_NOERR);
}
