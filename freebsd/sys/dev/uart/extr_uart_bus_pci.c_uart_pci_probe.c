
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
struct pci_id {scalar_t__ desc; int rid; int rclk; int regshft; } ;
typedef int device_t ;


 int ENXIO ;
 struct uart_softc* device_get_softc (int ) ;
 int device_set_desc (int ,scalar_t__) ;
 int pci_ns8250_ids ;
 int uart_bus_probe (int ,int ,int ,int ,int ,int ,int ) ;
 int uart_ns8250_class ;
 struct pci_id* uart_pci_match (int ,int ) ;

__attribute__((used)) static int
uart_pci_probe(device_t dev)
{
 struct uart_softc *sc;
 const struct pci_id *id;
 int result;

 sc = device_get_softc(dev);

 id = uart_pci_match(dev, pci_ns8250_ids);
 if (id != ((void*)0)) {
  sc->sc_class = &uart_ns8250_class;
  goto match;
 }

 return (ENXIO);

 match:
 result = uart_bus_probe(dev, id->regshft, 0, id->rclk, id->rid, 0, 0);

 if (result > 0)
  return (result);

 if (id->desc)
  device_set_desc(dev, id->desc);
 return (result);
}
