
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {scalar_t__ sc_irid; } ;
typedef int device_t ;


 struct uart_softc* device_get_softc (int ) ;
 int pci_release_msi (int ) ;
 int uart_bus_detach (int ) ;

__attribute__((used)) static int
uart_pci_detach(device_t dev)
{
 struct uart_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_irid != 0)
  pci_release_msi(dev);

 return (uart_bus_detach(dev));
}
