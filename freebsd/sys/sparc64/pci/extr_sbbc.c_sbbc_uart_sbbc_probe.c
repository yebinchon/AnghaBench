
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
typedef int device_t ;


 int SBBC_PCI_BAR ;
 struct uart_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 int uart_sbbc_class ;

__attribute__((used)) static int
sbbc_uart_sbbc_probe(device_t dev)
{
 struct uart_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_class = &uart_sbbc_class;
 device_set_desc(dev, "Serengeti console");
 return (uart_bus_probe(dev, 0, 0, 0, SBBC_PCI_BAR, 0, 0));
}
