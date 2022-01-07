
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int * sc_sysdev; } ;
typedef int device_t ;


 struct uart_softc* device_get_softc (int ) ;

int
uart_bus_sysdev(device_t dev)
{
 struct uart_softc *sc;

 sc = device_get_softc(dev);
 return ((sc->sc_sysdev != ((void*)0)) ? 1 : 0);
}
