
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_softc {int lock; } ;
typedef int device_t ;


 int MTX_DEF ;
 int bus_enumerate_hinted_children (int ) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_get_nameunit (int ) ;
 struct smbus_softc* device_get_softc (int ) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
smbus_attach(device_t dev)
{
 struct smbus_softc *sc = device_get_softc(dev);

 mtx_init(&sc->lock, device_get_nameunit(dev), "smbus", MTX_DEF);
 bus_generic_probe(dev);
 bus_enumerate_hinted_children(dev);
 bus_generic_attach(dev);

 return (0);
}
