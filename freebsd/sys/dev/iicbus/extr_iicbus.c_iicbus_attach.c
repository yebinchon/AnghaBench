
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct iicbus_softc {int strict; int lock; int dev; } ;
typedef int device_t ;


 struct iicbus_softc* IICBUS_SOFTC (int ) ;
 int IIC_FASTEST ;
 int MTX_DEF ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 scalar_t__ iic_probe_device (int ,int ) ;
 int iicbus_init_frequency (int ,int ) ;
 int iicbus_reset (int ,int ,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,...) ;
 scalar_t__ resource_int_value (int ,int,char*,int*) ;

__attribute__((used)) static int
iicbus_attach(device_t dev)
{



 struct iicbus_softc *sc = IICBUS_SOFTC(dev);
 int strict;

 sc->dev = dev;
 mtx_init(&sc->lock, "iicbus", ((void*)0), MTX_DEF);
 iicbus_init_frequency(dev, 0);
 iicbus_reset(dev, IIC_FASTEST, 0, ((void*)0));
 if (resource_int_value(device_get_name(dev),
  device_get_unit(dev), "strict", &strict) == 0)
  sc->strict = strict;
 else
  sc->strict = 1;
 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 bus_generic_attach(dev);
        return (0);
}
