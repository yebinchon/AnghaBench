
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_i2c_softc {int * iicbus; int opal_id; int dev; } ;
typedef int device_t ;


 int EINVAL ;
 int I2C_LOCK_INIT (struct opal_i2c_softc*) ;
 int OF_getencprop (int ,char*,int *,int) ;
 int OF_getproplen (int ,char*) ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 struct opal_i2c_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
opal_i2c_attach(device_t dev)
{
 struct opal_i2c_softc *sc;
 int len;

 sc = device_get_softc(dev);
 sc->dev = dev;

 len = OF_getproplen(ofw_bus_get_node(dev), "ibm,opal-id");
 if (len <= 0)
  return (EINVAL);
 OF_getencprop(ofw_bus_get_node(dev), "ibm,opal-id", &sc->opal_id, len);

 if ((sc->iicbus = device_add_child(dev, "iicbus", -1)) == ((void*)0)) {
  device_printf(dev, "could not allocate iicbus instance\n");
  return (EINVAL);
 }

 I2C_LOCK_INIT(sc);

 return (bus_generic_attach(dev));
}
