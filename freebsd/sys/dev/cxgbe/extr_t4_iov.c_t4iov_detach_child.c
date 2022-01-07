
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4iov_softc {int sc_attached; } ;
typedef int device_t ;


 struct t4iov_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pci_iov_detach (int ) ;

__attribute__((used)) static int
t4iov_detach_child(device_t dev)
{
 struct t4iov_softc *sc;




 sc = device_get_softc(dev);
 if (!sc->sc_attached)
  return (0);
 sc->sc_attached = 0;
 return (0);
}
