
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_hwmtx; int sc_bas; } ;


 int quicc_param (int *,int,int,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
quicc_bus_param(struct uart_softc *sc, int baudrate, int databits,
    int stopbits, int parity)
{
 int error;

 uart_lock(sc->sc_hwmtx);
 error = quicc_param(&sc->sc_bas, baudrate, databits, stopbits,
     parity);
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
