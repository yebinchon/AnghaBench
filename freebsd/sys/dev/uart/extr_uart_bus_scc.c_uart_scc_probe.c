
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_class; } ;
typedef int device_t ;


 scalar_t__ BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int ENXIO ;



 int SCC_IVAR_CHANNEL ;
 int SCC_IVAR_CLASS ;
 int SCC_IVAR_CLOCK ;
 int SCC_IVAR_MODE ;
 int SCC_IVAR_REGSHFT ;
 uintptr_t SCC_MODE_ASYNC ;
 int device_get_parent (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 int uart_bus_probe (int ,uintptr_t,int ,uintptr_t,int ,uintptr_t,int ) ;
 int uart_quicc_class ;
 int uart_sab82532_class ;
 int uart_z8530_class ;

__attribute__((used)) static int
uart_scc_probe(device_t dev)
{
 device_t parent;
 struct uart_softc *sc;
 uintptr_t ch, cl, md, rs;

 parent = device_get_parent(dev);
 sc = device_get_softc(dev);

 if (BUS_READ_IVAR(parent, dev, SCC_IVAR_MODE, &md) ||
     BUS_READ_IVAR(parent, dev, SCC_IVAR_CLASS, &cl))
  return (ENXIO);
 if (md != SCC_MODE_ASYNC)
  return (ENXIO);
 switch (cl) {
 case 130:
  sc->sc_class = &uart_quicc_class;
  break;
 case 129:
  sc->sc_class = &uart_sab82532_class;
  break;
 case 128:
  sc->sc_class = &uart_z8530_class;
  break;
 default:
  return (ENXIO);
 }
 if (BUS_READ_IVAR(parent, dev, SCC_IVAR_CHANNEL, &ch) ||
     BUS_READ_IVAR(parent, dev, SCC_IVAR_CLOCK, &cl) ||
     BUS_READ_IVAR(parent, dev, SCC_IVAR_REGSHFT, &rs))
  return (ENXIO);

 return (uart_bus_probe(dev, rs, 0, cl, 0, ch, 0));
}
