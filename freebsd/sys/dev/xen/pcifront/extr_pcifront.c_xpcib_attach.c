
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpcib_softc {int bus; } ;
typedef int device_t ;


 int DPRINTF (char*,int ) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static int
xpcib_attach(device_t dev)
{
 struct xpcib_softc *sc = (struct xpcib_softc *)device_get_softc(dev);

 DPRINTF("xpcib attach (bus=%d)\n", sc->bus);

 device_add_child(dev, "pci", -1);
 return bus_generic_attach(dev);
}
