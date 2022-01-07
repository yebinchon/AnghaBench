
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_softc {int tpc; } ;
struct uart_softc {int sc_hwmtx; int sc_bas; } ;


 int uart_lock (int ) ;
 int uart_unlock (int ) ;
 int z8530_param (int *,int,int,int,int,int *) ;

__attribute__((used)) static int
z8530_bus_param(struct uart_softc *sc, int baudrate, int databits,
    int stopbits, int parity)
{
 struct z8530_softc *z8530 = (struct z8530_softc*)sc;
 int error;

 uart_lock(sc->sc_hwmtx);
 error = z8530_param(&sc->sc_bas, baudrate, databits, stopbits, parity,
     &z8530->tpc);
 uart_unlock(sc->sc_hwmtx);
 return (error);
}
