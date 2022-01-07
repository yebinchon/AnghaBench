
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_uart_softc {int * clk_baud; int * clk_mod; } ;
typedef int device_t ;


 int clk_release (int *) ;
 struct jz4780_uart_softc* device_get_softc (int ) ;
 int uart_bus_detach (int ) ;

__attribute__((used)) static int
jz4780_uart_detach(device_t dev)
{
 struct jz4780_uart_softc *sc;
 int rv;

 rv = uart_bus_detach(dev);
 if (rv != 0)
  return (rv);

 sc = device_get_softc(dev);
 if (sc->clk_mod != ((void*)0)) {
  clk_release(sc->clk_mod);
 }
 if (sc->clk_baud != ((void*)0)) {
  clk_release(sc->clk_baud);
 }
 return (0);
}
