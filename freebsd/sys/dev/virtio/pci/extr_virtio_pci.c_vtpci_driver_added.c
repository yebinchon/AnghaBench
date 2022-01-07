
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int dummy; } ;
typedef int driver_t ;
typedef int device_t ;


 struct vtpci_softc* device_get_softc (int ) ;
 int vtpci_probe_and_attach_child (struct vtpci_softc*) ;

__attribute__((used)) static void
vtpci_driver_added(device_t dev, driver_t *driver)
{
 struct vtpci_softc *sc;

 sc = device_get_softc(dev);

 vtpci_probe_and_attach_child(sc);
}
