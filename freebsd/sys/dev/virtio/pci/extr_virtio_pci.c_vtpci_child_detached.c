
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtpci_softc {int dummy; } ;
typedef int device_t ;


 struct vtpci_softc* device_get_softc (int ) ;
 int vtpci_release_child_resources (struct vtpci_softc*) ;
 int vtpci_reset (struct vtpci_softc*) ;

__attribute__((used)) static void
vtpci_child_detached(device_t dev, device_t child)
{
 struct vtpci_softc *sc;

 sc = device_get_softc(dev);

 vtpci_reset(sc);
 vtpci_release_child_resources(sc);
}
