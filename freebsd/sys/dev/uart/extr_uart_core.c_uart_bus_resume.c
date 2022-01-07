
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int dummy; } ;
typedef int device_t ;


 int UART_ATTACH (struct uart_softc*) ;
 struct uart_softc* device_get_softc (int ) ;

int
uart_bus_resume(device_t dev)
{
 struct uart_softc *sc;

 sc = device_get_softc(dev);
 return (UART_ATTACH(sc));
}
