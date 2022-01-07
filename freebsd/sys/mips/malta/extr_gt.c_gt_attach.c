
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gt_softc {int dev; } ;
typedef int device_t ;


 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_add_child (int ,char*,int ) ;
 struct gt_softc* device_get_softc (int ) ;

__attribute__((used)) static int
gt_attach(device_t dev)
{
 struct gt_softc *sc = device_get_softc(dev);
 sc->dev = dev;

 device_add_child(dev, "pcib", 0);
 bus_generic_probe(dev);
 bus_generic_attach(dev);


 return (0);
}
