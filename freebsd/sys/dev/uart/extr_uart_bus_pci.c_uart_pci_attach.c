
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_irid; } ;
typedef int device_t ;


 struct uart_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 scalar_t__ pci_alloc_msi (int ,int*) ;
 scalar_t__ pci_msi_count (int ) ;
 int uart_bus_attach (int ) ;

__attribute__((used)) static int
uart_pci_attach(device_t dev)
{
 struct uart_softc *sc;
 int count;

 sc = device_get_softc(dev);





 if (pci_msi_count(dev) > 0) {
  count = 1;
  if (pci_alloc_msi(dev, &count) == 0) {
   sc->sc_irid = 1;
   device_printf(dev, "Using %d MSI message\n", count);
  }
 }

 return (uart_bus_attach(dev));
}
