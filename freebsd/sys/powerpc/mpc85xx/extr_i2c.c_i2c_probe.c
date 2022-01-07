
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int * res; scalar_t__ rid; int bsh; int bst; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int I2C_CONTROL_REG ;
 int I2C_ENABLE ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int i2c_write_reg (struct i2c_softc*,int ,int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
i2c_probe(device_t dev)
{
 struct i2c_softc *sc;

 if (!ofw_bus_is_compatible(dev, "fsl-i2c"))
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->rid = 0;

 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->rid,
     RF_ACTIVE);
 if (sc->res == ((void*)0)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->bst = rman_get_bustag(sc->res);
 sc->bsh = rman_get_bushandle(sc->res);


 i2c_write_reg(sc, I2C_CONTROL_REG, I2C_ENABLE);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->rid, sc->res);
 device_set_desc(dev, "I2C bus controller");

 return (BUS_PROBE_DEFAULT);
}
