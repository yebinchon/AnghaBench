
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {struct mtx* sc_hwmtx; } ;
struct mtx {int dummy; } ;
typedef int device_t ;


 scalar_t__ BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int ENXIO ;
 int SCC_IVAR_HWMTX ;
 int device_get_parent (int ) ;
 struct uart_softc* device_get_softc (int ) ;
 int uart_bus_attach (int ) ;

__attribute__((used)) static int
uart_scc_attach(device_t dev)
{
 device_t parent;
 struct uart_softc *sc;
 uintptr_t mtx;

 parent = device_get_parent(dev);
 sc = device_get_softc(dev);

 if (BUS_READ_IVAR(parent, dev, SCC_IVAR_HWMTX, &mtx))
  return (ENXIO);
 sc->sc_hwmtx = (struct mtx *)(void *)mtx;
 return (uart_bus_attach(dev));
}
